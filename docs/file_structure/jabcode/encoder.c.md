# encoder.c

## `setDefaultPalette`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">function</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/return.svg" alt=""></span></span><span class="mdx-badge__text">*void*</span></span>

Gathers the necessary color codes and writes them to the address in `palette` pointer.

| Parameter      | Type             | Description                                                                                                                                                                                     |
| -------------- | ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `color_number` | `int`            | The number of colors to be used in the JAB Code.                                                                                                                                                |
| `palette`      | `unsigned char*` | The pointer to the address where the color codes will be written.<br>The size of the memory block must be at least `color_number * 3` bytes, as each color is represented by three bytes (RGB). |

???+ abstract "Functionality"

    

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
