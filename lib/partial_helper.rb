require 'sinatra/base'

module Sinatra
  module Partial
    def partial name, options = {}
      haml :"_#{name}", options.merge!(:layout => false)
    end
  end
  helpers Partial
end
