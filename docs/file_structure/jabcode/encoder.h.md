# encoder.h

## `jab_default_palette`

<span class="mdx-badge"><span class="mdx-badge__icon"><span class="twemoji"><img src="/assets/icons/kind.svg" alt=""></span></span><span class="mdx-badge__text">unsigned char*</span></span> <span class="mdx-badge"><span class="mdx-badge__text">constant</span></span> <span class="mdx-badge"><span class="mdx-badge__text">static</span></span>

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
