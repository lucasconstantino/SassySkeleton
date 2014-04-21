
# Source Files

This directory is where you should put the files Compass should compile.

Each file in this directory - save the ones you might put and "_" prefix on - will generate a compiled file at the CSS directory, one level this skeleton's root.


## File contents

The files in this directory should contain:

- Optional import to the **[library](../library/library.sass)** file;
- Optional import to **outputting vendors** (normalize, 960gs, whatever);
- Optional imports to each **[partial](../partials)** this file should embrace.

Although not mandatory, the first item - the library (mostly it's components) - is probably going to be a dependency for your partials. If this is not true, then you might not be using this architecture correctly.

The second and third items are also not mandatory, but as the importation of the library should not output CSS code, it is obvious that you will need to import some file from one or the other - or sometimes from both.

**The file in this directory should not contain CSS rules**. The [partials](../partials) are for responsible for that.


## Multiple sources

Many applications will never have the need for more then one compiled CSS file. If that's the case, you should only have one file in this directory. But if you reach a point were this file, even when compressed, is compromising the performance of your application, then you will probably need to split the styles and load only the ones you need. In this case, you will have your library imported on all of these files - what should not output CSS on it's own - and then import the partials that combined will represent the style of a specific part of your system.


## Partials

Although Sass has a feature of ignoring files prefixed with an "_" when compiling, this feature is probably not needed when using this skeleton, as we use Compass import paths to separate and organize the actual partials. This way, we can have a more organized and clean directory of actual compiling files.
