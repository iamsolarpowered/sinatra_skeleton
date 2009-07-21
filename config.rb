require 'datamapper'
require 'haml'
require 'sinatra/rest'

# Credentials for HTTPAuth
set :username, 'admin'
set :password, 'secret'

# Require *.rb in lib directory
Dir.glob("lib/*.rb") { |lib| require lib }

# Setup DataMapper and models
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/db/#{Sinatra::Base.environment}.sqlite3.db")
Dir.glob("resources/*.rb") { |resource| load resource }
DataMapper.auto_upgrade!
