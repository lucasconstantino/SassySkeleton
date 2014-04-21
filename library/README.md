
# Library

This directory should be composed of non-emitting partials. Having that said, if anyone wanting to use the variables, mixins or components this library defines in, say, another project, they could do it with no harm to their final compiled CSS.


### Settings

If you have a group of common settings, this group should have a file in this directory. By default, this skeleton brings 3 commonly used settings:

- Colors;
- Typography;
- Sprites.

Colors and typography define many variables to be used in your project. They do have a pretty good documentation that might help your with naming conventions, and if your application grow to the creation of, say, a *media* settings file, you could continue with the standards these two files define to create your owns.

Sprites are pretty complicated. The main reason is because Compass will emit basic class selectors for your sprites each time you import one. If you are going to use sprites, I would recommend you read all the inline documentation on the *[sprites.sass](settings/sprites.sass)* file, as there is already a nice approach to solve this issue.


### Mixins

Mixins is where you'll put, well, mixins... The point here is much more what should be a mixin and what should not. This draws us to a discussion on whether to use mixins or placeholders. I tend to use one simple definition by [Roy Tomeij](https://twitter.com/roy):

> (*You should use a mixin*) when you want the output of the mixin to change depending on how you call it. If you need to take arguments or a @content block, a placeholder isn't going to help you.

For further reading, please have a look at [Roy's article on using mixins or placeholders](http://roytomeij.com/blog/2013/should-you-use-a-sass-mixin-or-extend.html).


### Components

Components are the core piece of our Sass styles. They will most of the times be [placeholders](http://thesassway.com/intermediate/understanding-placeholder-selectors), although . In comparison to the [Atomic Design methodology proposition](http://bradfrostweb.com/blog/post/atomic-web-design), the components would be our atoms and molecules. These components should always be context unaware and be the smallest possible.

Our partials will then `@extend` our components using semantic selectors to create our final compilable style definitions.

**P.s.: Although I really appreciate the extend functionality, it can get a little (DRY but) messy compiled CSS. To avoid any gotchas, please have a read on [Hugo Giraudel's article about @extend](http://www.sitepoint.com/sass-extend-nobody-told-you).**


### Sprites

Please, refer to the [sprites documentation](sprites/README.md) for it is pretty complete.
