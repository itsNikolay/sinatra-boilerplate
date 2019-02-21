# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.5.0'

gem 'activerecord'
gem 'pg'
gem 'puma'
gem 'rake',            require: false
gem 'sinatra',         require: 'sinatra/base'
gem 'sinatra-activerecord'
gem 'sinatra-contrib', require: false

group :development, :test do
  gem 'pry',        require: false
  gem 'pry-byebug', require: false
  gem 'rubocop',    require: false
end

group :test do
  gem 'rack-test'
  gem 'rspec'
end
