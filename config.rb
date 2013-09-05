
# This file should walk you throw the configuration of the compass usage in your project.
# For more detailed info, please refer to http://compass-style.org/help/tutorials/configuration-reference/


# =================================
# Environment
# =================================

# Change this to ":production" when ready to deploy the CSS to the live server.
environment = :development

# Set the syntax in usage.
preferred_syntax = :sass

# Select your output styles for development or production environments
# (e.g. ":expanded", ":nested", ":compact" or ":compressed")
development_output_style  = :expanded
production_output_style   = :compressed



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

# Set environment dependant outputing style.
output_style = (environment == :development) ? development_output_style : production_output_style

# Remove line comments depending on environment.
line_comments = (environment == :development)

# Pass environment dependant options to sass.
sass_options = {
  :debug_info => (environment == :development)
}