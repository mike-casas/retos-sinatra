require "sinatra"

get '/' do 
	erb:form
end

post '/saludar' do
	"¡Hola! #{params[:nombre]}"
end 