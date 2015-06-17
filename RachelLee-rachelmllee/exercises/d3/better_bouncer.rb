def lenient_bouncer
	true
end

def bouncer(age, country)
	country = country.downcase
	if (country == 'usa' && age >= 21) || (country == 'south africa' && age >= 18)
		"You in."
	else
		"You out."
	end
end

def strict_bouncer(name_age_arrays, input_letter)
	allowed_names = []

	name_age_arrays.each do |array|
		name = array[0]
		age = array[1]
		if age >= 21 && name[0] != input_letter
			allowed_names.push name
		end
	end
	allowed_names
end

puts lenient_bouncer
puts
puts bouncer(21, 'south africa')
puts bouncer(18, 'South Africa')
puts bouncer(17, 'usa')
puts
puts strict_bouncer([['erica', 22], ['ian', 24], ['brian', 34], ['seth', 18]], 'i').inspect
puts strict_bouncer([['aaron', 28], ['rafi', 21]], 'i').inspect