
# Components

This directory is reserved to create reusable non-emitting components. At the best scenario, the files in this directory should contain most of the style definitions you have in your project.

In comparison to the [Atomic Design](http://bradfrostweb.com/blog/post/atomic-web-design) methodology proposition, the components would be our atoms, molecules and sometimes even organisms.

> Components are the core piece of our CSS styles. These components should always be context unaware and be the smallest possible.

In Sass there are two structures for creating reusable style definitions that don't emit CSS but rather can be used on selectors that do; *mixins* and *placeholders*. The decision on which you'll use has many implications, and I tend to use both on different situations. There is a simple definition that helps a lot:

> (*You should use a mixin*) when you want the output of the mixin to change depending on how you call it. If you need to take arguments or a @content block, a placeholder isn't going to help you.

The advantage of *placeholders*, though, is that they keep your compiled CSS very DRY by concatenating selectors - while *mixins* simply inject the CSS where it is used. For further reading on that matter, please have a look at [Roy's article on using mixins or placeholders](http://roytomeij.com/blog/2013/should-you-use-a-sass-mixin-or-extend.html).

> You should also have a read at the [/partials](../../partials) directory to understand how to actually make use of components in your compilable code.

**P.s.: Although I really appreciate the extend functionality, it can get a little (DRY but) messy compiled CSS. To avoid any gotchas, please have a read on [Hugo Giraudel's article about @extend](http://www.sitepoint.com/sass-extend-nobody-told-you).**
