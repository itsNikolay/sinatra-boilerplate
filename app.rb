# frozen_string_literal: true

require_relative 'config/boot'

# Main Application
class App < Sinatra::Base
  register Sinatra::Contrib

  set :logging, true

  get '/' do
    send_file File.expand_path('index.html', settings.public_folder)
  end

  get '/worker' do
    ImportedWorker.create! name: 'John', email: 'john@example.com'
    json ImportedWorker.last.as_json
  end

  get 'internal_resourcing/import_workers/csv' do
    json 'hello'
  end

  post 'internal_resourcing/invite_worker' do
    json 'hello'
  end

  get 'internal_resourcing/imported_workers' do
    json 'hello'
  end

  delete 'imported_workers/:imported_worker_id' do
    json 'hello'
  end

  not_found do
    content_type :json
    { status: 404, message: 'Resource not found.' }.to_json
  end
end
