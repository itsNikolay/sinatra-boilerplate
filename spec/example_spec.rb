# frozen_string_literal: true

require_relative 'spec_helper'

describe 'My Sinatra Application' do
  before { DatabaseCleaner.clean }

  it 'gets the home page' do
    get '/'

    expect(last_response.status).to eq 200
    expect(last_response.body).to   match 'Hello World'
  end

  it 'gets json' do
    get '/hello.json'

    expect(last_response.status).to eq 200
    expect(JSON.parse(last_response.body))
      .to match('hello' => 'world')
  end
end
