# encoder.c

## `genColorPalette`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">function</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/return.svg" alt=""></span></span><span class="mdx-badge__text">`void`</span></span>

Implements a small algorithm to generate a greater variety of colors on the fly.

| Parameter      | Type             | Description                                                                                                                                                                                     |
| -------------- | ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `color_number` | `int`            | The number of colors to be used in the JAB Code.                                                                                                                                                |
| `palette`      | `unsigned char*` | The pointer to the address where the color codes will be written.<br>The size of the memory block must be at least `color_number * 3` bytes, as each color is represented by three bytes (RGB). |

???+ abstract "Functionality"

    The function first checks whether the passed `color_number` is either 16, 32, 64, 128 or 256. If not, the function returns without doing anything.

    The function then determines how many variations the individual color channels can have based on the inputted `color_number`:

    | Case | Red ($vr$) | Green ($vg$) | Blue ($vb$) |
    | ---- | ---------: | -----------: | ----------: |
    | 16   |          4 |            2 |           2 |
    | 32   |          4 |            4 |           2 |
    | 64   |          4 |            4 |           4 |
    | 128  |          8 |            4 |           4 |
    | 256  |          8 |            8 |           4 |

    ---

    The function then calculates the interval the individual color channels are increased per color variation:

    - $dr = \begin{cases} 85 & \text{if } \left(vr-1\right) = 3 \\ \frac{256}{\left(vr-1\right)} & \text{otherwise} \end{cases}$
    - $dg = \begin{cases} 85 & \text{if } \left(vg-1\right) = 3 \\ \frac{256}{\left(vg-1\right)} & \text{otherwise} \end{cases}$
    - $db = \begin{cases} 85 & \text{if } \left(vb-1\right) = 3 \\ \frac{256}{\left(vb-1\right)} & \text{otherwise} \end{cases}$

    After assigning the intervals, the code uses three nested loops that iterate $vr$, $vg$ and $vb$ times with indices $i$, $j$ and $k$ to calculate three temporary variables, $r$, $g$ and $b$, using $dr \times i$, $dg \times j$ and $db \times k$ respectively. All new values are clamped between 0 and 255 and typecast to an unsigned char.

    The calculated variables are then added in the mentioned order to the `palette` array. After the loop runs are done, the `palette` array will contain a number of items divisible by 3, with three items forming one color.

## `setDefaultPalette`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">function</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/return.svg" alt=""></span></span><span class="mdx-badge__text">`void`</span></span>

Gathers the necessary color codes and writes them to the address in `palette` pointer.

| Parameter      | Type             | Description                                                                                                                                                                                     |
| -------------- | ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `color_number` | `int`            | The number of colors to be used in the JAB Code.                                                                                                                                                |
| `palette`      | `unsigned char*` | The pointer to the address where the color codes will be written.<br>The size of the memory block must be at least `color_number * 3` bytes, as each color is represented by three bytes (RGB). |

???+ abstract "Functionality"

    The function differentiates between three different cases based on the value of `color_number`:

    | Case    | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
    | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
    | 4       | <p>It copies a total of four color pairs, each being three unsigned chars long, from the [`jab_default_palette`](encoder.h.md#jab_default_palette) array to the `palette` pointer. The three colors in order are: **black**, **magenta**, **yellow**, **cyan**.</p><p>To get the correct starting index, this function uses [`FP0_CORE_COLOR`](encoder.h.md#fp0_core_color), [`FP2_CORE_COLOR`](encoder.h.md#fp2_core_color) and[`FP3_CORE_COLOR`](encoder.h.md#fp3_core_color). It is likely also supposed to use [`FP1_CORE_COLOR`](encoder.h.md#fp1_core_color), but the offset for magenta is hard coded, see its docs for more details.</p> |
    | 8       | <p>It copies all eight colors, each being three unsigned chars long, from the [`jab_default_palette`](encoder.h.md#jab_default_palette) array to the `palette` pointer.                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
    | *Other* | The `color_number` as well as the `palette` pointer are passed to the [`genColorPalette`](#gencolorpalette), it handles all remaining color configuration.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |

## `setDefaultEccLevels`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">function</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/return.svg" alt=""></span></span><span class="mdx-badge__text">`void`</span></span>

Sets the error correction level for all symbols to 0.

| Parameter       | Type             | Description                                       |
| --------------- | ---------------- | ------------------------------------------------- |
| `symbol_number` | `int`            | The number of symbols.                            |
| `ecc_levels`    | `unsigned char*` | The `symbol_ecc_levels` or a `jab_encode` object. |

!!! warning

    This function seems redundant. It is only called once in the [`createEncode`](#createencode) function, but there, just a few lines before the call to this, [the memory is already reserved through `calloc`](https://github.com/OpenJAB/jabcode/blob/master/src/jabcode/encoder.c#L212).

    `calloc` though already sets the allocated memory bytes to 0 automatically during its call. This function does the same, making it redundant.

???+ abstract "Functionality"

    The function writes a value of 0 into the `ecc_levels` array `symbol_number` of times 

## `createEncode`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">function</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/return.svg" alt=""></span></span><span class="mdx-badge__text">[`jab_encode*`](jabcode.h.md#jab_encode)</span></span>

Creates the encode object that is needed to generate a JAB Code.

| Parameter       | Type  | Description                                       |
| --------------- | ----- | ------------------------------------------------- |
| `color_number`  | `int` | The number of colors to be used in the JAB Code.  |
| `symbol_number` | `int` | The number of symbols to be used in the JAB Code. |

???+ abstract "Functionality"

    The function first creates a new [`jab_encode`](jabcode.h.md#jab_encode) object and allocates memory for it.

    Then, it validates the input parameters `color_number` and `symbol_number`. The `color_number` must be **4**, **8**, **16**, **32**, **64**, **128**, or **256**, otherwise it will be set to the default [`DEFAULT_COLOR_NUMBER`](jabcode.h.md#default_color_number) for the rest of the function call. The `symbol_number` must be between **1** and [`MAX_SYMBOL_NUMBER`](jabcode.h.md#max_symbol_number), otherwise it will be set to the default [`DEFAULT_SYMBOL_NUMBER`](jabcode.h.md#default_symbol_number) for the rest of the function call.

    The validated values are then assigned to the `color_number` and `symbol_number` fields of the [`jab_encode`](jabcode.h.md#jab_encode) object. Additionally, the `master_symbol_width` and `master_symbol_height` fields are set to their default values of **1** and **1**, respectively, and `module_size` is set to [`DEFAULT_MODULE_SIZE`](jabcode.h.md#default_module_size).

    Following that, the [`setDefaultPalette`](#setdefaultpalette) function is called with the color number and the `palette` pointer of the new [`jab_encode`](jabcode.h.md#jab_encode) object as arguments.

    The [`setDefaultEccLevels`](#setdefaultecclevels) function is then called to ensure that the error correction level for all symbols is set to a value by default.

    The created [`jab_encode`](jabcode.h.md#jab_encode) object is then returned.

## `assignDockedSymbols`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">function</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/return.svg" alt=""></span></span><span class="mdx-badge__text">`unsigned char`</span></span>

Sets `host` and `slaves` members of each `symbols` value of a [`jab_encode`](jabcode.h.md#jab_encode) object.

| Parameter | Type          | Description                                                       |
| --------- | ------------- | ----------------------------------------------------------------- |
| `enc`     | `jab_encode*` | The encoding object generated by [`createEncode`](#createencode). |

???+ abstract "Functionality"

    TODO: Verify validity of claims

    The function first iterates over all `symbol_number` symbols to initialize their relationship fields: `host` is set to `-1` (no host assigned yet) and all four `slaves` entries are set to `0` (no slave on any side).

    ---

    Starting with `assigned_slave_index = 1` (index 0 is reserved for the master symbol), the function then uses three nested loops to identify and assign host–slave pairs. The outer loop iterates over symbol indices `i` as potential hosts, as long as `assigned_slave_index < symbol_number`. The middle loop iterates over the four sides `j` (0 = top, 1 = bottom, 2 = left, 3 = right). The inner loop iterates over symbol indices `k > i` where `symbols[k].host == -1`, i.e. not yet assigned to any host.

    For each candidate pair `(i, k)`, the function looks up the grid coordinates using [`jab_symbol_pos`](encoder.h.md#jab_symbol_pos) — `hpos = symbol_positions[i]` for the host and `spos = symbol_positions[k]` for the candidate slave — and checks whether the two symbols are adjacent in direction `j`:

    | Direction (`j`) | x condition            | y condition            |
    | --------------- | ---------------------- | ---------------------- |
    | 0 (top)         | `hpos.x == spos.x`     | `hpos.y - 1 == spos.y` |
    | 1 (bottom)      | `hpos.x == spos.x`     | `hpos.y + 1 == spos.y` |
    | 2 (left)        | `hpos.x - 1 == spos.x` | `hpos.y == spos.y`     |
    | 3 (right)       | `hpos.x + 1 == spos.x` | `hpos.y == spos.y`     |

    When a match is found, the host's `slaves[j]` is set to `assigned_slave_index`, and the slave's `slaves` entry in the opposite direction is set to `-1`, marking the direction toward its host:

    | Host direction (`j`) | Slave's `slaves` entry set to `-1` |
    | -------------------- | ---------------------------------- |
    | 0 (top)              | `slaves[1]` (bottom)               |
    | 1 (bottom)           | `slaves[0]` (top)                  |
    | 2 (left)             | `slaves[3]` (right)                |
    | 3 (right)            | `slaves[2]` (left)                 |

    `swap_symbols` is then called to move symbol `k` to position `assigned_slave_index` in the arrays, `symbols[assigned_slave_index].host` is set to `i`, and `assigned_slave_index` is incremented.

    ---

    After the assignment loops finish, the function verifies that every non-master symbol (index 1 to `symbol_number - 1`) has been assigned a host. If any symbol still has `host == -1`, its position is reported via `JAB_REPORT_ERROR` and the function returns [`JAB_FAILURE`](jabcode.h.md#jab_failure). If all symbols are properly assigned, [`JAB_SUCCESS`](jabcode.h.md#jab_success) is returned.

## `InitSymbols`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">function</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/return.svg" alt=""></span></span><span class="mdx-badge__text">`unsigned char`</span></span>

Initializes the symbols stored in a [`jab_encode`](jabcode.h.md#jab_encode) object.

| Parameter | Type          | Description                                                       |
| --------- | ------------- | ----------------------------------------------------------------- |
| `enc`     | `jab_encode*` | The encoding object generated by [`createEncode`](#createencode). |

???+ abstract "Functionality"

    If the `symbol_number` of the [`jab_encode`](jabcode.h.md#jab_encode) object is greater than 1 the function checks the following: If any value of `symbol_version` has a x or y coordinate not between 1 and 32, or any `symbol_positions` is not between 0 and [`MAX_SYMBOL_NUMBER`](jabcode.h.md#max_symbol_number), the function returns [`JAB_FAILURE`](jabcode.h.md#jab_failure).

    The code then moves the symbol that has a value of 0 in the `symbol_positions` array, the so-called master symbol, to the array index of 0. It should then be the first in `symbol_positions`, `symbol_versions` as well as `symbol_ecc_levels`, so accessing the index 0 describes the same symbol in all of them.

    If there's more than one symbol defined and no master symbol is present, meaning no symbol has a value of 0 in the `symbol_positions` array, the code returns [`JAB_FAILURE`](jabcode.h.md#jab_failure).

    If only one symbol is defined and it is not the master symbol, it is automatically being assigned to the master symbol position of 0.

    Following that, the code checks if multiple symbols have the same value in the `symbol_positions` array. If so, [`JAB_FAILURE`](jabcode.h.md#jab_failure) is returned.

    TODO: assignDockedSymbols
    TODO: checkDockedSymbolSize

    The next for-loop then assigns [`jab_symbol`](jabcode.h.md#jab_symbol) objects to the `symbols` array of the [`jab_encode`](jabcode.h.md#jab_encode) object: The function converts the x and y coordinates for every `symbol_versions` value to the x and y of `side_size` respectively using [`VERSION2SIZE`](jabcode.h.md#version2sizex); additionally, the iterative index is stored in the `index` property.

    The function then returns [`JAB_SUCCESS`](jabcode.h.md#jab_success).
