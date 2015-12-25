require "sinatra"

get '/' do
  erb:form
end

post '/response' do
  if params[:data].match(/[^A-Z]/) 
    <<-HTML
     <h1>Habla más duro mijito</h1>
     HTML
  else
    <<-HTML
     <h1>Ahhh si, manzanas!</h1>
     HTML
  end
end