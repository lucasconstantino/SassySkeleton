# Compass Seed
**The seed for better structured styles based on sass/compass.**

This project is a structure suggestion for scalable stylesheets.


## How to use

Clone this repository as the stylesheet directory of your project. For a shortcut, inside your project's root, clone using the following command:
    $ git clone https://github.com/lucascsilva/compass-seed.git stylesheet


## Directory layout

The structure presented below is a proposal for the structure of a webapp. While this project only brings structure to the stylesheet directory, we decided to show it on the scope where it could be used to make it easier to understand where to place our files.
This structure is an extension of the one proposed on http://thesassway.com/beginner/how-to-structure-a-sass-project.

    app/
    |
    |-- fonts/                            # For font files.
    |-- images/                           # For non-sprite images.
    |   |-- sprites/                      # For compiled sprite images only.
    |   
    |-- images-source/                    # For sprite source images.
    |-- scripts/
    `-- stylesheet/                       # For all source sass files.
        |-- config.rb                     # Compass configuration file.
        |-- css/                          # For compiled css only.
        |-- extensions/                   # For local compass extensions. Please, refeer to http://compass-style.org/help/tutorials/extensions/
        |-- src/
            |
            |-- lib/                      # Sass logic only files (sass that doens't create css output).
            |   |-- _fonts.sass           # Suggestion for a module.
            |   |-- _colors.sass          # Suggestion for a module.
            |   |-- _sprites.sass         # Suggestion for a module.
            |   |-- _functions.sass       # Etc.
            |
            |-- mixins/                   # Reusable mixins only.
            |   |-- _utility.sass         # Suggestion for a module.
            |   |-- _anchors.sass         # Suggestion for a module.
            |   |-- _tables.sass          # Etc.
            |   
            |-- partials/                 # CSS Constructors.
            |   |-- _header.sass          # Sugestion for a partial.
            |   |-- _footer.sass          # Sugestion for a partial.
            |   |-- _forms.sass           # Sugestion for a partial.
            |   |-- _navigation.sass      # Etc.
            |   
            |-- vendor/                   # CSS or Sass from other projects.
            |   |-- _compass.sass         # Compass SASS framework
            |   |-- _jquery.ui.core.css   # Sugestion for a vendor.
            |   |-- _bootstrap.scss       # Etc.
            |
            |-- _base.sass                # Import global needs for the partials.
            |-- global.sass               # Global sass compilation.
            |-- contact.sass              # Contextual sass compilation sample.