
*To better understand this chapter, please make sure you have read the [Compass guide on extensions](http://compass-style.org/help/tutorials/extensions).*

-------------------

# Extensions

Basically, there are two kinds of *extensions* that can be used by Sass/Compass:

- RubyGems;
- Ad-hoc Compass extensions.

The first is pretty straight forward for Ruby users: you can install them by running `gem install` and use it in your project by requiring it in your *config.rb*.

The second is something purely managed by Compass, and we will talk about it below.


### Installing gem available extensions

The extensions that are available as gems should be added to the *Gemfile* at the root directory and then required in the *config.rb*. Adding to the *Gemfile* makes sure anyone contributing to your project later will match all dependencies by running `bundler install`.

Please, if you don't know Bundler package manager (and I have to say I didn't, before having to write this documentation) have a look at it's documentation and installation instructions at [bundler.io](http://bundler.io/).


### Installing Ad-hoc extensions

Ad-hoc extensions are at last the ones that should reside in the *extensions* directory. They are something Compass understand, and for that Compass will simply lookup this directory and load the extensions automatically, so all you have to do is `@import` them in your *sass* files, probably inside the library/vendor directory.

**This kind of extension, as I said, don't have to be explicitly required in the *config.rb***.


## Further reading

There are some articles about extending Sass/Compass that you might like to follow. Here is a small list of the ones I read to prepare this documentation:

- [Managing Compass Extensions with Bundler](http://atendesigngroup.com/blog/managing-compass-extensions-bundler);
- [Bower all the things](https://www.codefellows.org/blogs/bower-all-the-things);
- [Using Bower with Compass](https://coderwall.com/p/bhb0pq)

## About Sache

Finding good Sass/Compass extensions was once difficult. Not anymore. You can easily discover new ones visiting [Sache](http://www.sache.in).
