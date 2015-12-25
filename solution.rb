require "sinatra"

get '/' do 
	code= "<h1>Hola</h1>
		   <% (1..50).each do |x| %>
		   	<% if x.even? %>
				<p> <%= x %> Soy Par </p>
			<% else %>
				<p> <%= x %> Soy Impar </p>
			<%end%>
		   <%end%>" 
	erb code
end