# encoder.h

## `jab_default_palette`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`unsigned char[]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

Stores the RGB values for the different colors that may be used during the encoding process.
The pallet includes the following colors:

```c
{
    0,   0,   0,    // 0: black
    0,   0,   255,  // 1: blue
    0,   255, 0,    // 2: green
    0,   255, 255,  // 3: cyan
    255, 0,   0,    // 4: red
    255, 0,   255,  // 5: magenta
    255, 255, 0,    // 6: yellow
    255, 255, 255   // 7: white
}
```

Thus, a single color is represented by three consecutive unsigned chars in the array, where the first value is the red component, the second value is the green component, and the third value is the blue component.

---

## `master_palette_placement_index`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`int[4][8]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `slave_palette_placement_index`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`int[8]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

---

## `FP0_CORE_COLOR`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">0</span></span>

This define is accessed in [`setDefaultPalette`](encoder.c.md#setdefaultpalette) to get the correct starting index for the color *black* in the [`jab_default_palette`](#jab_default_palette) array when using the four color mode.

## `FP1_CORE_COLOR`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">0</span></span>

This value is likely incorrectly implemented. The other `FPx_CORE_COLOR` defines are used in the [`setDefaultPalette`](encoder.c.md#setdefaultpalette) function to get the correct starting index for the colors, but this define is not used anywhere in the code.

!!! bug

    Instead, the function hard codes a value of **5** to get the starting index for the color *magenta*. This is likely a mistake, and the define should be used instead.

## `FP2_CORE_COLOR`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">6</span></span>

This define is accessed in [`setDefaultPalette`](encoder.c.md#setdefaultpalette) to get the correct starting index for the color *yellow* in the [`jab_default_palette`](#jab_default_palette) array when using the four color mode.

## `FP3_CORE_COLOR`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">3</span></span>

This define is accessed in [`setDefaultPalette`](encoder.c.md#setdefaultpalette) to get the correct starting index for the color *cyan* in the [`jab_default_palette`](#jab_default_palette) array when using the four color mode.

---

## `AP0_CORE_COLOR`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">3</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `AP1_CORE_COLOR`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">3</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `AP2_CORE_COLOR`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">3</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `AP3_CORE_COLOR`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">3</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `APX_CORE_COLOR`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">6</span></span>

> TODO: Clarify what this constant is used for in the codebase.

---

## `fp0_core_color_index`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`unsigned char[]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `fp1_core_color_index`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`unsigned char[]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `fp2_core_color_index`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`unsigned char[]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `fp3_core_color_index`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`unsigned char[]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

---

## `apn_core_color_index`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`unsigned char[]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `apx_core_color_index`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`unsigned char[]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

---

## `FP0`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">0</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `FP1`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">1</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `FP2`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">2</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `FP3`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">3</span></span>

> TODO: Clarify what this constant is used for in the codebase.

---

## `AP0`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">0</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `AP1`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">1</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `AP2`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">2</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `AP3`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">3</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `APX`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">4</span></span>

> TODO: Clarify what this constant is used for in the codebase.

---

## `jab_code`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">struct</span></span>

The structure holding the final jabcode information.

| Member       | Type                                        | Description                                  |
| ------------ | ------------------------------------------- | -------------------------------------------- |
| `dimension`  | `int`                                       | The number of symbols in the JAB Code.       |
| `code_size`  | [`jab_vector2d`](jabcode.h.md#jab_vector2d) | The total size of the code in modules.       |
| `min_x`      | `int`                                       | The minimum x-coordinate of the code layout. |
| `min_y`      | `int`                                       | The minimum y-coordinate of the code layout. |
| `rows`       | `int`                                       | The number of rows in the symbol grid.       |
| `cols`       | `int`                                       | The number of columns in the symbol grid.    |
| `row_height` | `int*`                                      | The height of each row in modules.           |
| `col_width`  | `int*`                                      | The width of each column in modules.         |

---

## `jab_symbol_pos`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">[`jab_vector2d`](jabcode.h.md#jab_vector2d)[`[MAX_SYMBOL_NUMBER]`](jabcode.h.md#max_symbol_number)</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `nc_color_encode_table`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`unsigned char[8][2]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `jab_enconing_table`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">[`int[MAX_SIZE_ENCODING_MODE]`](jabcode.h.md#max_size_encoding_mode)[`[JAB_ENCODING_MODES]`](jabcode.h.md#jab_encoding_modes)</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `latch_shift_to`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`int[14][14]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `character_size`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`int[7]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `mode_switch`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`int[7][16]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `ecclevel2coderate`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`float[11]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `ecclevel2wcwr`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`float[11][2]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `jab_ap_pos`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`int[32][9]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `jab_ap_num`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">`int[32]`</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

> TODO: Clarify what this constant is used for in the codebase.
