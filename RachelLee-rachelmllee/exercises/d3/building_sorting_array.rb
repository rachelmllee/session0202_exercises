puts "Type as many words as you want!"

words = []

while true
	word = gets.chomp
	if word == '' 
		puts words.sort
		break
	end
	words.push word
end