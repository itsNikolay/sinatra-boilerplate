# frozen_string_literal: true

require_relative 'app'

require 'sinatra/activerecord/rake'
require 'rspec/core/rake_task'

task default: [:spec]

RSpec::Core::RakeTask.new(:spec) do |t|
  t.verbose = false
end

desc 'Console'
task :c do
  system 'bin/pry'
end

desc 'Server'
task :s do
  system 'bin/rackup'
end

desc 'Rubocop'
task :r do
  system 'bin/rubocop -P'
end
