require "sinatra"

enable :sessions

get '/' do
  @valor=session[:valor] = (session[:valor].to_i + 1).to_s
  erb:form
end