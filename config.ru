require 'rubygems'
require 'sinatra'

set :environment, :production
set :raise_errors, true
disable :run

require 'app'

run Sinatra.application
