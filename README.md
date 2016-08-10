# Tiny Blog

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/cmckni3/tiny-blog)

Multi Blog Site built on Rails 4

## Requirements

* Ruby 2+
* Postgresql 9.4+
* Nodejs 0.10+

## Setup

* Install Ruby

* Install Postgresql

* Install node.js

* Copy `config/database.yml.sample`
  ```bash
  cp config/database.yml.sample database.yml
  ```

* Edit `config/database.yml`

* Run setup script
  ```bash
  bin/setup
  ```

### Optional steps

#### Database notes

The `bin/setup` script handles most of the setup but it may fail due to
invalid database configuration. After changing the database configuration
the following command can be run:

* Setup database, run migrations, and run seeds
  ```bash
  rake db:create db:migrate db:seed
  ```

Alternatively, `bin/setup` can be run again.

#### Ruby dependencies

The following command can be used to install new Ruby dependencies:

* Install `bundler` dependencies
  ```bash
  bundle install
  ```

Alternatively, `bin/setup` can be run to install `bundler` dependencies.

## Run the application

* Start the rails server
  ```bash
  rails s
  ```

* Visit the site in the browser
  ```bash
  open localhost:3000
  ```

## Run the tests
  ```bash
  rake test
  ```

## TODO

Write tests

Test models, helpers and some integration tests
