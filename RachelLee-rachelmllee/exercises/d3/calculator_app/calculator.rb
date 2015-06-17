# ~/ixperience/session0202_exercises/RachelLee-rachelmllee/exercises/d3/calculator_app/calculator.rb
require "sinatra"

get "/" do
	erb :home
end

get "/add/:number_one/:number_two" do |number_one, number_two|
	sum = number_one.to_i + number_two.to_i
	"The sum of #{number_one} and #{number_two} is #{sum}!"
end

get "/multiply/:number_one/:number_two" do |number_one, number_two|
	product = number_one.to_i * number_two.to_i
	"The product of #{number_one} and #{number_two} is #{product}!"
end

get "/subtract/:number_one/:number_two" do |number_one, number_two|
	difference = number_one.to_i - number_two.to_i
	"The difference of #{number_one} and #{number_two} is #{difference}!"
end

get "/divide/:number_one/:number_two" do |number_one, number_two|
	quotient = number_one.to_i / number_two.to_i
	"The quotient of #{number_one} divided by #{number_two} is #{quotient}!"
end

get "/exponent/:number_one/:number_two" do |number_one, number_two|
	total = number_one.to_i ** number_two.to_i
	"#{number_one} to the power of #{number_two} is #{total}!"
end