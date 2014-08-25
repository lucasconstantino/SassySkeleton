# SassySkeleton

<img src="brand.jpg" align="right" />

[![Sass v3.4.x](http://img.shields.io/badge/Sass-3.4.x-ff69b4.svg?style=flat)](https://github.com/sass/sass) [![Compass v1.0.1](http://img.shields.io/badge/Compass-1.0.1-red.svg?style=flat)](https://github.com/chriseppstein/compass) [![Sass Globbing v1.1.0](http://img.shields.io/badge/Sass Globbing-1.1.0-ff69b4.svg?style=flat)](https://github.com/chriseppstein/sass-globbing)

> A boilerplate for better structured styles based on Sass & Compass.

#### What it is

This project is a structure suggestion for scalable stylesheet development.

#### What it isn't

This project is not a style toolset nor a Sass framework. It is simply a structure proposal for you to create your styles over it.


## How to use

There isn't really a "one command" way to start using this project, as you'll have to somehow copy the files from this Git repository into your project's root as a asset directory, not as a library that could be handled by [Bower](http://bower.io/), [Bundler](http://bundler.io/), or any tool like that. That beeing said, for non Git users I recommend you simply [download this repository files](https://github.com/lucasconstantino/SassySkeleton/archive/master.zip) and unzip it to your project's root under a directory with a name of choice (*sass* is my preference, but *compass* or *css-source* aren't that bad either).

### Using Git

For command line users, I recommend your clone this repository to a directory inside your project root (again, with a name of choice). For a shortcut, inside your project's root, clone using the following command:

    $ git clone https://github.com/lucasconstantino/SassySkeleton.git sass

If you are versioning your project, don't forget to remove the *sass/.git* directory, as it would lead Git not to see changes on Sass files as part of your project. You can do so by running the following command from your project's root:

    $ rm -Rf sass/.git

> There is no reason to worry about keeping your "SassySkeleton" up-to-date with the original repository, as this is no functional library but only a structure boilerplate.

### Configuration

Go on and read the *config.rb* file to adapt Compass to your use case. This file contains path suggestion that match directories expected to be outside of the *sass* directory, so it is probable that you'll need to change one or two to match your project's structure.

Keep in mind that **if using a version control system**, you should probably add the compiling destination directory (defaults to *../css*) and the sprites generating destination, if using sprites, to your ignored files. Using Git - and provided you keep the *config.rb* with it's defaults - that would mean creating a *.gitignore* file in your project root with the following content:

    */css/*
    */images/sprites/*

### Dependencies

This structure depends on three gems on specific versions to work:

* Sass *>= v3.4.0*
* Compass *>= v1.0.1*
* Sass Globbing *>= 1.1.0*

To install a specific version of a gem you can use ```gem install [gem] -v [version]```. However, I recommend you use [Bundler](http://bundler.io/) for the task. After installing it, all you would have to do is run ```bundle install``` inside *sass* directory (or whatever you called it) to install the necessary gems. After that, if you have these gems with other versions for other projects, you would have to run Compass using the commands preceded by ```bundle exec```, like ```bundle exec compass compile``` or ```bundle exec compass watch -e development```.


## Directory layout

The relevance of this project relies most upon it's directory layout. Because of that, most of the documentation on how to use the directories and where exactly to put your code will be found inside each directory or even as inline comments on the files.

Nevertheless, what is important to explain here is the main structure division. It consists of the separation of your code on three main concepts:

* [*/library*](library)
* [*/partials*](partials)
* [*/source*](source)

#### Library

This is were most of the code should reside. However, **no file in this directory should output CSS**. It should consist only of variables, functions, mixins or [silent classes (placeholders)](http://thesassway.com/intermediate/understanding-placeholder-selectors).

#### Partials

Here is where the bond between the library and your CSS selectors should occur. Most of the code here will consist of the usage of mixins or placeholders by semantic CSS selectors.

> Although that's the goal, I have to confess it's no easy job to keep style definitions out of this directory, but the advantage of styling this way is that everything that's created inside the library as non-emitting CSS can be reused across all your elements, keeping your code both DRY and easy to maintain.

#### Sources

In the *partials* directory, you will have many element specific files. In the *source* directory, you will have one or more context specific stylesheet generators, a.k.a Sass compiling files. These files will consist of the import of the hole library files (using ```@import library``` statement) and the import of some partial files that "fulfill" the styles for the context where the compiled file will be used.


> Usually with Sass we use "_" (underline) preceding your file names to avoid them from beeing compiled by Sass, what makes them *partials*. In this structure, as we divide all our files in multiple directories and use [Compass' *add_import_path*](http://compass-style.org/help/tutorials/configuration-reference/) to have them all available, only the *sources* directory will be watched against changes and get compiled, so the files on the other directories don't have to use the underline naming to be ignored.

### Flowchart of Imports

![Flowchart of Imports](https://docs.google.com/drawings/d/1vMPM1GPHZ0kFuCXYYTPMHIHvk0zYH0m3gti8KnmZLws/pub?w=728)


## License

Copyright (c) 2014 Lucas Constantino Silva.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
