require 'sequel'
require 'sequel/extensions/seed'
require 'pg'
require 'json'
require 'multi_json'
require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/base'

get '/' do
 "Hi! I am api_sinatra_postgres!\n\n"
end
DB = Sequel.connect(
    adapter: :postgres,
    database: 'sinatra_seq_dev',
    host: 'localhost',
    password: 'password',
    user: 'sinatra_admin',
    max_connections: 10,
# logger: Logger.new('log/db.log')
    )

%w{ controllers models routes }.each { |dir| Dir.glob("./#{ dir }/*.rb", &method(:require)) }

before do
  content_type 'application/json' # To see perfectly in POSTMAN - in tab Pretty
end

def collection_to_api(collection) 		# For Array
  MultiJson.dump(collection.map { |s| s.to_api })
end
