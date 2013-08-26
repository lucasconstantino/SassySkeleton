
# Set the syntax in usage.
preferred_syntax = :sass

# Change this to :production when ready to deploy the CSS to the live server.
environment = :development
#environment = :production

# In development, we can turn on the FireSass-compatible debug_info.
firesass = true

# http_path = "/path/on/server/"

# Location of the theme's resources.
css_dir               = "css"
sass_dir              = "src"
extensions_dir        = "sass-extensions"
images_dir            = "../images"
generated_images_dir  = "../images/sprites"
sprite_load_path      = "../images-source"
javascripts_dir       = "../scripts"
fonts_dir             = "../fonts"


# Require any additional compass plugins installed on your system.
# require 'ninesixty'

# Add importing paths to use vendor's partials that reside outside the src directory.
#add_import_path "../../FOO/BAR"


# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = (environment == :development) ? :expanded : :compressed

# To enable relative paths to assets via compass helper functions. Since Drupal
# themes can be installed in multiple locations, we don't need to worry about
# the absolute path to the theme from the server root.
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false

# Pass options to sass. For development, we turn on the FireSass-compatible
# debug_info if the firesass config variable above is true.
sass_options = (environment == :development && firesass == true) ? {:debug_info => true} : {}
