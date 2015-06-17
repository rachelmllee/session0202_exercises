# ~/ixperience/session0202_exercises/RachelLee-rachelmllee/exercises/d3/personal_app/personal_app.rb
require "sinatra"

get "/" do
	erb :home
end

get "/about" do
	erb :about
end

get "/contact" do
	erb :contact
end