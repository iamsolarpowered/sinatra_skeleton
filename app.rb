require 'rubygems'
require 'sinatra' unless defined?(Sinatra)
require 'config'

get '/' do
  haml :index
end
