require 'sinatra'

get '/' do
	erb :index
end

get '/contacts' do
 	@contacts = ["Robert", "Melissa", "Tebogo"]
 	erb :contacts
end

get '/contacts/:contact' do
	contacts = {"Robert" => "0712218652", "Melissa" => "0718711840", "Tebogo" => "0847240511"}
	
	@contact_name = params["contact"]
	@number = contacts[@contact_name]

	erb :contact
end