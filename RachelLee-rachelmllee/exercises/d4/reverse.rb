def reverse(array)
	reversed_array = []
	array.each do |element|
		reversed_array.unshift(element)
	end	
	reversed_array
end

random_objects = ["apples", 4, "bananas", "kiwis", "pears"]
puts reverse(random_objects)