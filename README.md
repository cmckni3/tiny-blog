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
