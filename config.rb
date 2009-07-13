require 'datamapper'
require 'haml'

# Credentials for HTTPAuth
set :username, 'admin'
set :password, 'secret'

# Setup DataMapper and models
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/db/#{Sinatra::Base.environment}.sqlite3.db")
Dir.glob("models/*.rb") { |model| require model }
DataMapper.auto_upgrade!

# Require everything in lib directory
Dir.glob("lib/*.rb") { |lib| require lib }
