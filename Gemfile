source 'https://rubygems.org'
ruby '~> 2.4.6'

# Application configuration
gem 'dotenv-rails', require: 'dotenv/rails-now', groups: [:development, :test]

gem 'rails', '~> 4.2.11', '>= 4.2.11.1'

gem 'pg'

gem 'sass-rails', '~> 5.0', '>= 5.0.7'
gem 'slim-rails', '>= 3.2.0'
gem 'sprockets', '>= 3.0.0'
gem 'sprockets-es6'
gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails', '>= 4.3.5'
gem 'quiet_assets', '>= 1.1.0'

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap', '~> 3.2'
  gem 'rails-assets-bootswatch', '~> 3.3'
end
gem 'font-awesome-sass', '~> 4.4'

gem 'active_model_serializers'
gem 'responders', '~> 2.4', '>= 2.4.1'

gem 'devise', '~> 4.7', '>= 4.7.1'

gem 'draper', '>= 2.1.0'

gem 'redcarpet',     '~> 3.3.3'

gem 'sdoc', '~> 0.4.0', group: :doc

group :development do
  gem 'pry'
  gem 'rubocop'
  gem 'web-console', '~> 3.3', '>= 3.3.0'
end

group :development, :test do
  gem 'faker'
  gem 'guard', '~> 2.14.0'
  gem 'guard-minitest', '~> 2.4.5'
  gem 'guard-rubocop', '~> 1.2.0'
  gem 'spring'
  gem 'thin'
end

group :test do
  gem 'minitest-focus'
  gem 'minitest-rails', '>= 2.2.1'
  gem 'minitest-rails-capybara', '>= 2.1.2'
end

group :production do
  gem 'rails_12factor'
end
