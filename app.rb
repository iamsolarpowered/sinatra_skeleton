require 'rubygems'
require 'sinatra'
require 'config'

get '/' do
  haml :index
end
