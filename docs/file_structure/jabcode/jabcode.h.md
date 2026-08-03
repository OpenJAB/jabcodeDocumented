# jabcode.h

## `MAX_SYMBOL_NUMBER`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">61</span></span>

The maximum number of symbols that can be used in a JAB Code.

## `MAX_COLOR_NUMBER`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">256</span></span>

The maximum number of colors that can be used in a JAB Code.

While the color number is accepted to be a power of 2 by most of the code, realistically there are guardrails in place to ensure that the color number is only 4 or 8. Even if these are disabled manually, the code raises a segmentation fault for any other color number.

## `MAX_SIZE_ENCODING_MODE`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">256</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `JAB_ENCODING_MODES`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">6</span></span>

The mode order is defined [as follows](https://github.com/OpenJAB/jabcode/blob/master/src/jabcode/encoder.h#L197):

1. Uppercase
2. Lowercase
3. Numeric
4. Punctuation
5. Mixed
6. Alphanumeric
7. Bytes

> TODO: Clarify what this constant is used for in the codebase.

## `ENC_MAX`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">1000000</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `NUMBER_OF_MASK_PATTERNS`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">8</span></span>

> TODO: Clarify what this constant is used for in the codebase.

---

## `DEFAULT_SYMBOL_NUMBER`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">1</span></span>

The default number of symbols that will be used in a JAB Code if the user does not specify a value.

## `DEFAULT_MODULE_SIZE`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">12</span></span>

The default size of the modules in a JAB Code if the user does not specify a value.

## `DEFAULT_COLOR_NUMBER`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">8</span></span>

The default number of colors that will be used in a JAB Code if the user does not specify a value.

While the color number is accepted to be a power of 2 by most of the code, realistically there are guardrails in place to ensure that the color number is only 4 or 8. Even if these are disabled manually, the code raises a segmentation fault for any other color number.

## `DEFAULT_MODULE_COLOR_MODE`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">2</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `DEFAULT_ECC_LEVEL`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">3</span></span>

The default error correction level that will be used in a JAB Code if the user does not specify a value.

## `DEFAULT_MASKING_REFERENCE`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">7</span></span>

> TODO: Clarify what this constant is used for in the codebase.

---

## `DISTANCE_TO_BORDER`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">4</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `MAX_ALIGNMENT_NUMBER`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">9</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `COLOR_PALETTE_NUMBER`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">4</span></span>

> TODO: Clarify what this constant is used for in the codebase.

---

## `BITMAP_BITS_PER_PIXEL`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">32</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `BITMAP_BITS_PER_CHANNEL`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">8</span></span>

> TODO: Clarify what this constant is used for in the codebase.

## `BITMAP_CHANNEL_COUNT`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">4</span></span>

> TODO: Clarify what this constant is used for in the codebase.

---

## `JAB_SUCCESS`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">1</span></span>

The return value the library will use to indicate that a function has completed successfully.

!!! warning

    Please note that this does not equal the shell success exit code of **0**. The library will return **1** for success and **0** for failure, while the shell will return **0** for success and **1** for failure.

    The value should rather be interpreted as a boolean, where **1** is true and **0** is false, though it isn't actually one. This is likely the case due to some functions using additional return values to indicate specific errors.

## `JAB_FAILURE`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">0</span></span>

The return value the library will use to indicate that a function has failed to complete successfully.

!!! warning

    Please note that this does not equal the shell failure exit code of **1**. The library will return **1** for success and **0** for failure, while the shell will return **0** for success and **1** for failure.

    The value should rather be interpreted as a boolean, where **1** is true and **0** is false, though it isn't actually one. This is likely the case due to some functions using additional return values to indicate specific errors.

---

## `NORMAL_DECODE`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">0</span></span>

The decoding mode that will be used to decode a JAB Code in the normal way, without any additional processing.

## `COMPATIBLE_DECODE`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">*define*</span></span> <span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/constant.svg" alt=""></span></span><span class="mdx-badge__text">1</span></span>

The decoding mode that will be used to decode a JAB Code in a compatible way.

> TODO: Clarify what differentiates this decoding mode from the normal decoding mode, and what additional processing is done.

---

## `VERSION2SIZE(x)`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">macro</span></span>

> TODO: Clarify what this macro is used for in the codebase.

## `SIZE2VERSION(x)`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">macro</span></span>

> TODO: Clarify what this macro is used for in the codebase.

---

## `jab_vector2d`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">struct</span></span>

A 2D integer vector that represents a point in 2D space.

| Member | Type  | Description                     |
| ------ | ----- | ------------------------------- |
| `x`    | `int` | The x-coordinate of the vector. |
| `y`    | `int` | The y-coordinate of the vector. |

## `jab_point`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">struct</span></span>

A 2D floating-point vector that represents a point in 2D space.

| Member | Type    | Description                    |
| ------ | ------- | ------------------------------ |
| `x`    | `float` | The x-coordinate of the point. |
| `y`    | `float` | The y-coordinate of the point. |

## `jab_data`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">struct</span></span>

The contents of a JAB Code. This struct can be understood as a String with additionally the length being stored as well.

| Member   | Type     | Description                      |
| -------- | -------- | -------------------------------- |
| `length` | `int`    | The length of the data in bytes. |
| `data`   | `char[]` | The data of the JAB Code.        |

## `jab_bitmap`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">struct</span></span>

The bitmap that is used to store the pixel data of a JAB Code. The bitmap is stored in a 1D array of unsigned chars.

| Member             | Type            | Description                           |
| ------------------ | --------------- | ------------------------------------- |
| `width`            | `int`           | The width of the bitmap.              |
| `height`           | `int`           | The height of the bitmap.             |
| `bits_per_pixel`   | `int`           | The numbers of bits per pixel.        |
| `bits_per_channel` | `int`           | The number of bits per channel.       |
| `channel_count`    | `int`           | The number of channels in the bitmap. |
| `pixel`            | `unsigned char` | The pixel data of the bitmap.         |

## `jab_symbol`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">struct</span></span>

A parameter that represents a symbol in a JAB Code.

| Member    | Type                            | Description                              |
| --------- | ------------------------------- | ---------------------------------------- |
| index     | `int`                           | The index of the symbol in the JAB Code. |
| side_size | [`jab_vector2d`](#jab_vector2d) | The size of the symbol in modules.       |
| host      | `int`                           | The index of the host symbol.            |
| slaves    | `int[4]`                        | The indices of the slave symbols.        |
| wcwr      | `int[2]`                        | The width and height of the symbol.      |
| data      | [`jab_data*`](#jab_data)        | The data of the symbol.                  |
| data_map  | `unsigned char*`                | The data map of the symbol.              |
| metadata  | [`jab_data*`](#jab_data)        | The metadata of the symbol.              |
| matrix    | `unsigned char*`                | The matrix of the symbol.                |

## `jab_encode`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">struct</span></span>

The object that holds information about a JAB Code and that enables the code generation process.

| Member                 | Type                             | Description                                  |
| ---------------------- | -------------------------------- | -------------------------------------------- |
| `color_number`         | `int`                            | The number of colors used in the JAB Code.   |
| `symbol_number`        | `int`                            | The number of symbols used in the JAB Code.  |
| `module_size`          | `int`                            | The size of the modules in the JAB Code.     |
| `master_symbol_width`  | `int`                            | The width of the master symbol in modules.   |
| `master_symbol_height` | `int`                            | The height of the master symbol in modules.  |
| `palette`              | `unsigned char*`                 | The color palette used in the JAB Code.      |
| `symbol_versions`      | [`jab_vector2d*`](#jab_vector2d) | The versions of each symbol.                 |
| `symbol_ecc_levels`    | `unsigned char*`                 | The error correction levels of each symbol.  |
| `symbol_positions`     | `int*`                           | The positions of each symbol.                |
| `symbols`              | [`jab_symbol*`](#jab_symbol)     | The symbols of the JAB Code.                 |
| `bitmap`               | [`jab_bitmap*`](#jab_bitmap)     | The output bitmap of the generated JAB Code. |

## `jab_metadata`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">struct</span></span>

Additional information about a JAB Code that is stored in the metadata of the JAB Code.

| Member            | Type                            | Description                                             |
| ----------------- | ------------------------------- | ------------------------------------------------------- |
| `default_mode`    | `unsigned char`                 | Whether the symbol uses the default encoding mode.      |
| `Nc`              | `unsigned char`                 | The color number code of the symbol.                    |
| `mask_type`       | `unsigned char`                 | The mask pattern type applied to the symbol.            |
| `docked_position` | `unsigned char`                 | The docked position of the symbol relative to its host. |
| `side_version`    | [`jab_vector2d`](#jab_vector2d) | The version of each side of the symbol.                 |
| `ecl`             | [`jab_vector2d`](#jab_vector2d) | The error correction levels for the symbol.             |

## `jab_decoded_symbol`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">struct</span></span>

| Member              | Type                               | Description                                       |
| ------------------- | ---------------------------------- | ------------------------------------------------- |
| `index`             | `int`                              | The index of the symbol in the JAB Code.          |
| `host_index`        | `int`                              | The index of the host symbol.                     |
| `host_position`     | `int`                              | The position of this symbol relative to its host. |
| `side_size`         | [`jab_vector2d`](#jab_vector2d)    | The size of the symbol in modules.                |
| `module_size`       | `float`                            | The size of a module in pixels.                   |
| `pattern_positions` | [`jab_point[4]`](#jab_point)       | The positions of the four finder patterns.        |
| `metadata`          | [`jab_metadata`](#jab_metadata)    | The metadata of the symbol.                       |
| `slave_metadata`    | [`jab_metadata[4]`](#jab_metadata) | The metadata of up to four slave symbols.         |
| `palette`           | `unsigned char*`                   | The color palette used in the symbol.             |
| `data`              | [`jab_data*`](#jab_data)           | The decoded data of the symbol.                   |
