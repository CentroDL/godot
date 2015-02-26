## Setting up Capybara

Capybara simulates user behavior. 

How to integrate: 

Add `rspec-rails`, `capybara`, and 'selenium-webdriver' to your Gemfile's
development and test groups

```rb
# Gemfile
group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'selenium-webdriver'
end
```

Then run bundle install and run the rspec generator. 

```sh
$ rails g rspec:install
```

Add `require 'capybara/rails'` to `rails_helper.rb`

```rb
ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'capybara/rails'
```

Feature specs are high-level tests meant to exercise slices of functionality
through an application. They should drive the application only via its
external interface, usually web pages.
