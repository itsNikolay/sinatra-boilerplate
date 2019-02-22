# frozen_string_literal: true

require_relative 'config/boot'

# Application
class App < Sinatra::Base
  register Sinatra::Contrib
  set :logging, true

  get '/' do
    send_file File.expand_path('index.html', settings.public_folder)
  end

  get '/hello.json' do
    json HelloWorldService.json
  end

  not_found do
    content_type :json
    { status: 404, message: 'Resource not found.' }.to_json
  end
end
