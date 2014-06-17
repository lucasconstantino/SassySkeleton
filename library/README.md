
# Library

This directory should be composed of non-emitting partials. That means no file in this directory, when compiled, should generate CSS on it's own. This should allow, among other things, for the reuse of this directory as a hole across projects.

This structure proposes the division of library in three main types:

* [/settings](settings)
* [/components](components)
* [/extensions](extensions)

> Also, there is a directory reserved to holding sprites, if you happen to use any. That is where you should put source images for your sprites, that will be compiled using [Compass sprite generation](http://compass-style.org/help/tutorials/spriting/).


### [Settings](settings)

If you have a group of related settings, this group should have a file in this directory. By default (and to serve as an example), this skeleton brings 3 commonly used setting files:

- Colors;
- Typography;
- Sprites.

Colors and typography define many variables to be used in your project. They do have a pretty good documentation in the code that might help your with naming conventions, and if your application grow to the creation of, e.g, a *media* settings file, you could continue with the standards these two files define to create your own.

#### Sprites

Sprites are pretty complicated. The main reason is because Compass will emit basic class selectors for your sprites each time you import one, what would cause for the emission of CSS from the library, what is not a desired behavior as stated before. If you are going to use sprites, I would recommend you read all the documentation on the *[sprites.sass](settings/sprites.sass)* file, as there is already a nice approach solving this issue. Also, have a look at the [/sprites](sprites) directory, as it documents how to place your files.


### [Components](components)

Components are the core pieces of our CSS styles. These components should always be context unaware and be the smallest possible.

Please, have a look at the [README.md](components) for components, as it has plenty of documentation on how should components be created, also going through the topic of *mixins* vs *placeholders*.


### [Extensions](extensions)

It is very common to use third party in our projects. This directory is reserved for that code. Please, refer to the [README.md](extensions) inside that directory to better understand how to install the different kind of extensions and how to make use of them.
