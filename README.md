# Tiny Blog

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/cmckni3/tiny-blog)

Multi Blog Site

## Requirements

* Ruby 2+
* MySQL 5.6
* Nodejs 0.10+

## Setup

* Install Ruby

* Install MySQL

* Install node.js

* Edit `config/database.yml`

* Run setup script
  ```bash
  bin/setup
  ```

* Install `bundler` dependencies
  ```bash
  bundle install
  ```

* Setup database, run migrations, and run seeds
  ```bash
  rake db:create db:migrate db:seed
  ```

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
