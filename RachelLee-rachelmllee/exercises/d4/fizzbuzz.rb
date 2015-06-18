def fizzbuzz(max_val)
  current_val = 1
  while current_val <= max_val
  	if current_val % 15 == 0
  		puts "fizzbuzz"
  	elsif current_val % 3 == 0
  		puts "fizz"
  	elsif current_val % 5 == 0
  		puts "buzz"
  	else
  		puts current_val
  	end
  	current_val += 1
  end
end

fizzbuzz(100)