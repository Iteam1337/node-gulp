node-gulp
=========
Docker image including most libs we need when using gulp.

## Why?
To speed up the redeployment when using docker and gulp

## How to use

Dockerfile:

    FROM iteam/node-gulp 
    ADD package.json
    RUN npm install
    ADD gulpfile.js /app/
    ADD src /app/src

The above dockerfile will install new packages not already installed in the base image and then run the default gulp command defined in the gulpfile.js


## Pre installed packages

    assemble
    bower
    chai
    glob
    gulp
    gulp-assemble
    gulp-awspublish
    gulp-changed
    gulp-concat
    gulp-debug
    gulp-foreach
    gulp-htmlmin
    gulp-jshint
    gulp-less
    gulp-livereload
    gulp-mocha
    gulp-plumber
    gulp-rename
    gulp-sass
    gulp-sourcemaps
    gulp-uglify
    gulp-watch
    gulp-webserver
    handlebars
    jsdom
    jshint-stylish
    marked
    moment
    proxyquire
    rimraf
    sinon
    sinon-chai
    streamqueue
    yaml-front-matter