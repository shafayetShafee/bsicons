# Bootstrap Icons Extension For Quarto

This extension provides support including icons provided by [Bootstrap](https://icons.getbootstrap.com/). Icons can be used in HTML documents only.

## Installing

```bash
quarto install extension shafayetShafee/bsicons
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

To embed an icon, use the {{< bi >}} shortcode. For example:

```
{{< bi alarm >}}

{{< bi alarm-fill >}}

{{< bi balloon-heart  size=5em color=#2ecaf9 >}}

{{< bi emoji-sunglasses  size=5em color=#2ecaf9 label="Proud Happy Face" >}}

```

This extension provides support for over 1,600 bootstrap icons. You can browse all of the available icons here:

[https://icons.getbootstrap.com/#icons](https://icons.getbootstrap.com/#icons)

### icons color

To specify a color for icons, you can use css [named colors](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#named_colors) (i.e. `red`, `cornflowerblue` etc), [RGB color model](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#rgb_color_model) or [HSL color model](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#hsl_color_model).

The complete list of available named color is [here](https://developer.mozilla.org/en-US/docs/Web/CSS/named-color).

```
{{< bi alarm-fill color=red >}}

{{< bi twitch color=lightseagreen >}}

{{< bi twitter color=cornflowerblue >}}

{{< bi windows color=#E86033 >}}

{{< bi ubuntu color=rgb(232,96,51) >}}

{{< bi terminal-fill color=rgba(232,96,51,1) >}}

{{< bi stars color=hsl(15,80%,56%) >}}

{{< bi spotify color=hsla(15,80%,56%,360) >}}
```

**Note that, when specifying color with either RGB or HSL model, DO NOT PUT SPACE BETWEEN VALUES. That is, do not write as `rgb(232, 96, 51)`, instead write as `rgb(232,96,51)`, otherwise it will not work.**


### icon sizing

You can actually use any size in `px`, `em`, `rem`, `vw`, `vh` css units.

```
{{< bi incognito size=37px >}}

{{< bi person-plus-fill size=3.1rem >}}

{{< bi postcard-heart size=2.7em >}}

{{< bi reddit size=9.8vw >}}

{{< bi slack size=7.6vh >}}

```

### Accessibility

If the icon is being used in place of some text, just add some descriptive text in the label argument.

```
{{< bi hand-thumbs-up-fill  size=7em color=cornflowerblue label="Thumbs up" >}}
```

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).


## Acknowledgement

The code for this extension is adapted from the [fontawesome](https://github.com/quarto-ext/fontawesome).
