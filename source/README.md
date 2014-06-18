
# Source Files

This directory is where you will put the files that should get compiled.

Each file in this directory - save the ones you might put and "_" prefix on, but you shouldn't have to do that either - will generate a compiled file in the CSS output directory as configured in the *config.rb* (by default, that would mean on a directory called *css* and located one level above where *config.rb* resides).


## File contents

The files in this directory should contain:

- Optional import to the **[library](../library/library.sass)** file;
- Optional import to **outputting extensions** (normalize, 960gs, Bootstrap, whatever you like);
- Optional imports to each **[partial](../partials)** this file should embrace.

Although not mandatory, the first item - the library - is probably going to be a dependency for your partials. If this is not true, then you might not be using this architecture correctly.

The second and third items are also not mandatory, but as the import of the library should not output CSS code, it is obvious that you will need to import files for one or the other - or even for both.

**A file in this directory should not contain CSS rules**. The [components](../library/components) and the [partials](../partials) should be responsible for that. *Always*.


## Multiple sources

Many applications will never have the need for more then one compiled CSS file. If that's your case, you should only have one file in this directory - might even be the *main.sass* sample file above. But if you reach a point were this file, even when compressed, is compromising the performance of your application, then you will probably need to split the styles and load only the ones you need based on the contexts of your application. In this case, you will probably have your library imported on all of these files - what should not output CSS on it's own - and then import the partials that combined will represent the style of a specific part of your system. That's when this structure proposal gives the most benefit.


## Partials

Usually with Sass we use "_" (underline) preceding your file names to avoid them from beeing compiled by Sass, what makes them *partials*. In this structure, as we divide all our files in multiple directories and use Compass' [*add_import_path*](http://compass-style.org/help/tutorials/configuration-reference/) to have them all available, only the *sources* directory will be watched against changes and get compiled, so the files on the other directories don't have to use the underline naming to be ignored.
