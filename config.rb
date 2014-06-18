#==========================================================
# Compass Configuration
#==========================================================
# This file should walk you throw the configuration of the
# Compass usage in your project. For more detailed info,
# please refer to http://compass-style.org/help/tutorials/configuration-reference/.


#======================================
# Main Configuration
#======================================

# Set the syntax in usage.
preferred_syntax = :sass



#======================================
# Directory Structure
#======================================

# Set usage of relative paths for the settings below.
relative_assets = true

# Path locations.
sass_dir              = "source"              # - The directory where to look for
                                              #   generating stylesheets.
css_dir               = "../css"              # - The path for placing compiled
                                              #   CSS. Note that this path points
                                              #   one directory above the current
                                              #   directory.
images_dir            = "../images"           # - The place Compass will look for
                                              #   images when images are required
                                              #   via the "image" function.
generated_images_dir  = "../images/sprites"   # - Where compass will place the
                                              #   generated sprites. Note that each
                                              #   sprite source (i.e. sprite
                                              #   directory) will show here as one
                                              #   image.
extensions_dir        = "library/extensions"  # - The path to lookup for sass/compass
                                              #   Ad-hoc extensions.
sprite_load_path      = "library/sprites"     # - The source for the sprites. images.
                                              #   Each directory inside this will
                                              #   be then generated as a sprite.
fonts_dir             = "../fonts"            # - The directory where the font
                                              #   files are kept.

# Add the partials path to the possible import origins.
add_import_path "library"
add_import_path "partials"


# =================================
# Vendor Settings
# =================================

# Add importing paths to use vendor's partials that reside outside
# this directory.
# add_import_path '../../path/to/other/project'

# Require any additional compass plugins available globally.
require 'sass-globbing'



# =================================
# Environment Settings.
# =================================
# You are probably not going to need to change the settings below.
# If you wish to debug your styles, you should run compass with the
# command "-e development".

# Development configs.
if environment == :development

  output_style      = :expanded
  line_comments     = true
  debug             = true

# Production configs.
else

  output_style      = :compressed
  line_comments     = false
  debug             = false

end

# Sourcemaps are available from Sass 3.3.x and Compass 1.x
sourcemap = debug

# Pass environment dependant options to sass.
sass_options = {
  :debug_info => debug
}
