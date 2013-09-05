
# This file should walk you throw the configuration of the compass usage in your project.
# For more detailed info, please refer to http://compass-style.org/help/tutorials/configuration-reference/


# ====================================================
# Main Configuration
# ====================================================

# Set the syntax in usage.
preferred_syntax = :sass



# =================================
# Directory Structure
# =================================

# Set usage of relative paths (as opposed to absolute path) for assets (e.g. images)
relative_assets = true

# Path locations.
http_path             = "/compass/"
sass_dir              = "src"
extensions_dir        = "sass-extensions"
css_dir               = "../css"
images_dir            = "../images"
generated_images_dir  = "../images/sprites"
sprite_load_path      = "../images-source"
javascripts_dir       = "../scripts"
fonts_dir             = "../fonts"



# =================================
# Vendor Settings
# =================================

# Add importing paths to use vendor's partials that reside outside the compass directory.
# add_import_path '../../FOO/BAR'

# Require any additional compass plugins.
# require 'ninesixty'



# =================================
# You shouldn't need to directives below.
# =================================

# Development configs.
if environment.nil? || environment == :production

  output_style  = :compressed
  line_comments = true
  debug_info    = true

# Non Development (e.g. QA, stage, production, ...)configs.
else

  output_style  = :expanded
  line_comments = false
  debug_info    = false

end

# Pass environment dependant options to sass.
sass_options = {
  :debug_info => debug_info
}