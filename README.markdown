# Beer lottery


## Setup on your local machine
Currently runs on rails 3.2.12 and ruby 1.9.3. How to setup:


### Environment variables
Because of http basic auth on heroku you need to set a few environment variables
in your shell:

    export BEER_BASIC_AUTH_USR=<user name here>
    export BEER_BASIC_AUTH_PWD=<password here>

I could probably have disabled basic auth in development mode
but I haven't looked into that.


### Get all gems, and load the database schema
Then run these commands from the app root

    bundle
    rake db:create
    rake db:schema:load
    rails server

