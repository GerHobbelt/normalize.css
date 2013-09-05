# Set.scss

Set.scss is a [Sass](http://sass-lang.com/) normalize and base stylesheet that emphasizes setting your own values instead of linking to an unedited third-party stylesheet. As [Eric Meyer](http://meyerweb.com/eric/tools/css/reset/) says, CSS resets are "a starting point, not a self-contained black box of no-touchiness."

## Using Set.scss

Set.scss doesn't make assumptions on how baseline elements should be styled. It provides scaffolding to fill with element styles specific to your project, prepopulated with normalization rules from [Nicolas Gallagher's](https://twitter.com/necolas) [Normalize.css](https://github.com/necolas/normalize.css) and sensible defaults from [HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate).

Comments above selectors let you know which rules must be set, and the project where the rule originated:

```scss
// Set margin (Normalize)
body {
  margin: 0;
}
```

If a rule must be set to a certain value, the value is given in the comment as well:

```scss
// Set font-size, font-family (Normalize)
// Set white-space: pre-wrap (Normalize)
pre {
  font-size: 1em;
  font-family: $type-stack-monospace;
  white-space: pre-wrap;
}
```

### Technical notes

This project currently tracks:

- [Normalize.css](https://github.com/necolas/normalize.css) v2.1.2.
- [HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate) v4.2.0

Since this is primarily a re-interpretation of Normalize.css 2.x, browser support is identical: Modern browsers and IE8+.

`html [element]` is a hack to target android 4.x fixes, in case you're wondering (I was).
