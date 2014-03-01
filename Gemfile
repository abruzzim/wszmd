source 'https://rubygems.org'
ruby '2.0.0'
# ruby-gemset=rails_4_0_3

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'
gem 'bootstrap-sass'

group :production do
  # enables serving assets in production and setting your logger to 
  # standard out, both of which are required to run a Rails 4 
  # application on a twelve-factor provider.
  # See also http://12factor.net/
  gem 'rails_12factor'
end

group :development, :test do
  # Pry is a powerful alternative to the standard IRB shell for Ruby.
  gem 'pry'
  gem 'pry-rails'
  # rspec-rails is a testing framework for Rails 3.x and 4.x.
  gem 'rspec-rails'
  # WebDriver is a tool for writing automated tests of websites. 
  # It aims to mimic the behavior of a real user, and as such 
  # interacts with the HTML of the application.
  gem 'selenium-webdriver'
  # Capybara is an integration testing tool for rack based web 
  # applications. It simulates how a user would interact with a website
  gem 'capybara'
end

group :test do
  # factory_girl_rails provides Rails integration for factory_girl. 
  # All Rails-specific features are only compatible with Rails 3.
  gem 'factory_girl_rails'
end

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. 
# Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
