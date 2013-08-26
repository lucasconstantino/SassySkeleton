
# This file should walk you throw the configuration of the compass usage in your project.
# For more detailed info, please refer to http://compass-style.org/help/tutorials/configuration-reference/

# =================================
# Structure
# =================================

# Set usage of relative paths (as opposed to absolute path) for assets like (e.g. images)
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

# Add importing paths to use vendor's partials that reside outside the compass directory.
# add_import_path "../../FOO/BAR"

# Require any additional compass plugins installed on your system.
# require 'ninesixty'


# =================================
# Environment
# =================================

# Change this to ":production" when ready to deploy the CSS to the live server.
environment = :development

# Set the syntax in usage.
preferred_syntax = :sass

# Select your production output style (":expanded", ":nested", ":compact" or ":compressed")
production_output_style = :compressed


# =================================
# You shouldn't need to change the configs below.
# =================================

# Set environment dependant outputing style.
output_style = (environment == :development) ? :expanded : production_output_style

# Remove line comments depending on environment.
line_comments = (environment == :development)

# Pass environment dependant options to sass.
sass_options = {
  :debug_info => (environment == :development)
}