node-gulp
=========

Docker image to use gulp to build static assets served by NGINX as a static site. 

## How to use

Add a gulpfile.js to your project, configure it to output to /app/out

    FROM tutum.co/iteamdev/node-gulp
    ADD src /app/src
    ADD gulpfile.js /app/
    RUN ./node_modules/.bin/gulp build

The image will automatically add package.json and run npm install. It already have many preloaded gulp packages so it should be fairly quick to do a rebuild.
