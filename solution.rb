require "sinatra"

use Rack::Session::Cookie, :key => 'rack.session',
                           :path => '/',
                           :expire_after => 2592000,
                           :secret => 'change_me',
                           :old_secret => 'also_change_me'

get '/' do
  @valor=session[:valor] = (session[:valor].to_i + 1).to_s
  erb:form
end