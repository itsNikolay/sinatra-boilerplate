# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'
abort('DATABASE_URL environment variable is set') if ENV['DATABASE_URL']

require_relative '../app'

module SinatraApp
  def app
    App
  end
end

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Rack::Test::Methods
  config.include SinatraApp
end

ActiveRecord::Migration.maintain_test_schema!
