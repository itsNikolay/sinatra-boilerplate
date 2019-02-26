# frozen_string_literal: true

source 'https://rubygems.org'

gem 'activerecord'
gem 'pg'
gem 'puma'
gem 'rake',            require: false
gem 'sinatra',         require: 'sinatra/base'
gem 'sinatra-activerecord'
gem 'sinatra-contrib'

group :development, :test do
  gem 'pry',        require: false
  gem 'pry-byebug', require: false
  gem 'rubocop',    require: false
end

group :test do
  gem 'database_cleaner', require: false
  gem 'rack-test'
  gem 'rspec'
end
