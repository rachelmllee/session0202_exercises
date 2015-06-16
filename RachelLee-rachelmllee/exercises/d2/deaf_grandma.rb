puts "HI SONNY!"
reply = ''
byeCount = 0

while true
	reply = gets.chomp
	year = 1930 + rand(21)
	if reply != "BYE"
		byeCount = 0
		if reply == reply.upcase
			puts "NO, NOT SINCE #{year}!"
		else 
			puts "HUH?! SPEAK UP, SONNY!"
		end
	else
		byeCount += 1
		if byeCount == 3
			break
		end
		puts "NO, NOT SINCE #{year}!"
	end
end