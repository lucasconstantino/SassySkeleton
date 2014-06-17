
# Partials

Partials will hold files divided (mostly) by context or similarity on the application. E.g.: you should definitely have a partial called *login.sass*. You shouldn't, thought, have a partial called *buttons.sass*; that should be created as a non-emitting reusable [component](../library/components).

In an ideal scenario, your partials should be very clean and small. They should consist mostly of selectors that extend *placeholders* or include *mixins*, having little to no CSS adjustment.


### Sample code

An example of a login partial could be something like this:

    form.login
      @extend %form // Basic form component.
      background-color: #ddd // Adjustment over original component style.

      button[type=submit]
        @extend %button-success
        font-size: 1.5em // Adjustment over original component style.

To help your understanding, here is the equivalent component definitions for ```%form``` and ```%button-success``` that could serve the code above:

    %form
      padding: 2em

      // Sub-component addressing semantic selector.
      input[type=text]
        border: 1px solid #ccc
        border-radius: 2px

      // Optional sub-component.
      %divisor
        display: block
        margin: 1em 0
        border-top: 1px solid #ccc

    // Button component.
    %button
      display: inline-block
      border: 1px solid #ccc
      border-radius: 2px
      &:hover
        box-shadow: 0 0 2px black

    // Button component variant.
    %button-success
      @extend %button
      border-color: green
      background-color: lightgreen
      color: white
