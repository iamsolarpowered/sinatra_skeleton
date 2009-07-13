require 'activerecord'
require 'haml'

# Credentials for HTTPAuth
set :username, 'admin'
set :password, 'secret'

# ActiveRecord Setup
ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :dbfile  => "db/#{Sinatra::Base.environment}.sqlite3.db"
)
Dir.glob("models/*.rb") { |model| require model }

# Require everything in lib directory
Dir.glob("lib/*.rb") { |lib| require lib }
