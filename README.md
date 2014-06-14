***This README file is mostly outdated. The READMEs under the directories, however, a pretty up-to-date, so I would recommend you follow the guides in those files insted of this main one for now***

------------

# SassySkeleton
**A boilerplate for better structured styles based on sass/compass.**

This project is a structure suggestion for scalable stylesheets.


## How to use

### Using Git
Clone this repository as the stylesheet directory of your project. For a shortcut, inside your project's root, clone using the following command:

    $ git clone https://github.com/lucascsilva/compass-boilerplate.git compass

Read the config.rb file to adapt compass to your use case.

Keep in mind that **if using a revision control system**, you should probably add the following to your ignores:

    *.css
    */images/sprites/*

This would avoid revisioning compiled CSS and generated sprites.


## Directory layout

The structure presented below is a proposal for the structure of a webapp. While this project only brings structure to the stylesheet directory, we decided to show it on the scope where it could be used to make it easier to understand where to place our files.
This structure is an extension of the one proposed on http://thesassway.com/beginner/how-to-structure-a-sass-project.

    root/
    |
    |-- css/                              # For compiled css only.
    |-- fonts/                            # For font files.
    |-- images/                           # For all images.
    |   |-- sprites/                      # For compiled sprite images only.
    |   
    |-- images-source/                    # For sprite source images.
    |-- scripts/
    `-- sass/                             # For all non-compiled source.
        |-- extensions/                   # For local compass extensions.
        |-- config.rb                     # Compass configuration file.
        |-- src/
            |
            |-- dev/                      # Sass logic only files (sass that doens't create css output).
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
            |-- vendor/                   # CSS or Sass from vendors.
            |   |-- _compass.sass         # Compass SASS framework
            |   |-- _jquery.ui.core.css   # Sugestion for a vendor.
            |   |-- _bootstrap.csss       # Etc.
            |
            |-- _base.sass                # Import global needs for the partials.
            |-- global.sass               # Global sass compilation.
            |-- contact.sass              # Contextual sass compilation sample.
