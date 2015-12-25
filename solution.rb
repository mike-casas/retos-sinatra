require "sinatra"

use Rack::Session::Pool

get '/:valor?' do
  if params[:valor]
    @sum=params[:valor]
  else
    @sum = session[:valor]
  end
  erb:form
end

post '/' do
  session[:valor] = (session[:valor].to_i + 1).to_s
  redirect "/#{session[:valor]}"
end
