# Components

This directory is reserved to create reusable non-emitting components. At the best scenario, the files in this directory should contain most of the style attribute definitions you have in your project.

## Non-emitting

By non-emitting, I mean that no file in this directory, when imported by another, should output CSS after compilation. There are two ways of doing that:

- Mixins;
- Placeholders.


### Mixins

Mixins are great. They accept arguments, and they keep your code organized. They do, however, create bloated CSS, as they simply copy the content of a mixin into the content of the selector where it was included.


### Placeholders

Placeholders are awesome! Using `@extend` you'll have your definitions united in a perfect and maintainable way. CSS is 
