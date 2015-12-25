require "sinatra"

get '/' do
request.env['HTTP_USER_AGENT']
end