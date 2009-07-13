require 'sinatra/base'

module Sinatra
  module HTTPAuth
    def authorize!
      response['WWW-Authenticate'] = %(Basic realm="Please log in") and \
      throw(:halt, [401, "Not authorized\n"]) and \
      return unless authorized?
    end

    def authorized?
      @auth ||=  Rack::Auth::Basic::Request.new(request.env)
      @auth.provided? && @auth.basic? && @auth.credentials && @auth.credentials == [options.username, options.password]
    end
  end

  helpers HTTPAuth
end
