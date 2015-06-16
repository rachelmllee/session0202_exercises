puts "What is your starting year?"
year = gets.chomp.to_i
puts "What is your ending year?"
endYear = gets.chomp.to_i

puts "These are the leap years between #{year} and #{endYear}, inclusive:"

while year <= endYear
	if (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0)
		puts year.to_s
	end
	year += 1
end