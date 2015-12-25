require "sinatra"
use Rack::Session::Pool, :expire_after => 2592000

get '/' do
  @valor=session[:valor] = (session[:valor].to_i + 1).to_s
  erb:form
end