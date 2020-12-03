root = File.expand_path File.dirname(__FILE__)
require File.join( root , 'sinatra_psql.rb' )
run Sinatra::Application