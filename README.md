# Compass Seed
## The seed for better structured styles based on sass/compass.

This project is a structure suggestion for scalable stylesheets.


## How to use compass-seed

Clone the compass-seed repository into the stylesheet directory of your applicaton and start styling.


## Directory Layout

    app/                --> all of the files to be used in production
      css/              --> css files
        app.css         --> default stylesheet
      img/              --> image files
      index.html        --> app layout file (the main html template file of the app)
      js/               --> javascript files
        controllers.js  --> application controllers
        filters.js      --> custom angular filters
        services.js     --> custom angular services
        widgets.js      --> custom angular widgets
      lib/              --> angular and 3rd party javascript libraries
        angular/
          angular.js            --> the latest angular js
          angular.min.js        --> the latest minified angular js
          angular-*.js  --> angular add-on modules
          version.txt           --> version number
      partials/         --> angular view partials (partial html templates)
        partial1.html
        partial2.html

    config/testacular.conf.js        --> config file for running unit tests with Testacular
    config/testacular-e2e.conf.js    --> config file for running e2e tests with Testacular

    scripts/            --> handy shell/js/ruby scripts
      e2e-test.sh       --> runs end-to-end tests with Testacular (*nix)
      e2e-test.bat      --> runs end-to-end tests with Testacular (windows)
      test.bat          --> autotests unit tests with Testacular (windows)
      test.sh           --> autotests unit tests with Testacular (*nix)
      web-server.js     --> simple development webserver based on node.js

    test/               --> test source files and libraries
      e2e/              -->
        runner.html     --> end-to-end test runner (open in your browser to run)
        scenarios.js    --> end-to-end specs
      lib/
        angular/                --> angular testing libraries
          angular-mocks.js      --> mocks that replace certain angular services in tests
          angular-scenario.js   --> angular's scenario (end-to-end) test runner library
          version.txt           --> version file
      unit/                     --> unit level specs/tests
        controllersSpec.js      --> specs for controllers

## Contact

For more information on AngularJS please check out http://angularjs.org/