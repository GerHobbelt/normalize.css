# Set.scss

Set.scss is an implementation of a CSS [reset](http://meyerweb.com/eric/tools/css/reset/) and [normalize](https://github.com/necolas/normalize.css) stylesheet that emphasizes setting your own base values instead of linking to and inheriting from an unedited base stylesheet. As Eric Meyer says, CSS resets are "a starting point, not a self-contained black box of no-touchiness." 

Set.scss makes no assumptions about how base elements will be styled. Instead it provides scaffolding to fill in as you see fit (e.g., with default element styles or certain values reset for [opt-in typography](http://anthonyshort.me/2012/05/global-typographic-styles-suck)), annotated with CSS rules you must override to normalize display between browsers.

Normalization rules taken from [Nicolas Gallagher's](https://github.com/necolas) [normalize.css](https://github.com/necolas/normalize.css) v2.1.2 and [HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate) v4.2.0
Supports modern browsers and IE8+  
`html [element]` is a hack for android 4.x fixes
