require "sinatra"

get '/' do
  erb:form
end

post '/response' do
  if params[:data].match(/[^A-Z]/) 
    <<-HTML
     <h1>habla mas durito mijo</h1>
     HTML
  else
    <<-HTML
     <h1>Ahh si , manzanas</h1>
     HTML
  end
end