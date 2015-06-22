require 'sinatra'

get '/' do
	erb :home
end

# post '/battle' do
# 	puts params.inspect
# 	puts params['radio']
# 	erb :battle
# end

get '/battle/:person_one/:person_two/:battle_type' do |person_one, person_two, battle_type|
	@person_one = person_one.downcase
	@person_two = person_two.downcase

	battles = {"sumo" => "Sumo Battle", "spaghetti" => "Spaghetti Whip Battle", "boerewors" => "Boerewors Eating Competition", 
		"assassinating" => "Assassinating Wes", "crocodile" => "Crocodile Chariot Racing"}
	battle_type = battle_type.downcase
	@battle = battles[battle_type]
	@link = "/result/" + person_one + "/" + person_two + "/" + battle_type 

	erb :battle
end

get '/result/:person_one/:person_two/:battle_type' do |person_one, person_two, battle_type|
	person_one = person_one.downcase
	person_two = person_two.downcase
	fighters = {
	'robert_l'=> {
		:sumo=> rand(8),
		:spaghetti=> rand(2),
		:boerewors=> rand(7),
		:assassinating=> rand(3),
		:crocodile=> rand(7)
	},
	'alec'=> {
		:sumo=> rand(10),
		:spaghetti=> rand(2),
		:boerewors=> rand(8),
		:assassinating=> rand(7),
		:crocodile=> rand(7)
	},
	'alexis'=> {
		:sumo=> rand(6),
		:spaghetti=> rand(5),
		:boerewors=> rand(6),
		:assassinating=> rand(7),
		:crocodile=> rand(8)
	},
	'aaron'=> {
		:sumo=> rand(4),
		:spaghetti=> rand(5),
		:boerewors=> rand(6),
		:assassinating=> rand(5),
		:crocodile=> rand(5)
	},
	'amanda'=> {
		:sumo=> rand(2),
		:spaghetti=> rand(10),
		:boerewors=> rand(3),
		:assassinating=> rand(5),
		:crocodile=> rand(4)
	},
	'annelie'=> {
		:sumo=> rand(6),
		:spaghetti=> rand(4),
		:boerewors=> rand(5),
		:assassinating=> rand(7),
		:crocodile=> rand(6)
	},
	'brian'=> {
		:sumo=> rand(8),
		:spaghetti=> rand(5),
		:boerewors=> rand(8),
		:assassinating=> rand(7),
		:crocodile=> rand(6)
	},
	'chris'=> {
		:sumo=> rand(7),
		:spaghetti=> rand(8),
		:boerewors=> rand(7),
		:assassinating=> rand(2),
		:crocodile=> rand(3)
	},
	'daniel'=> {
		:sumo=> rand(6),
		:spaghetti=> rand(6),
		:boerewors=> rand(8),
		:assassinating=> rand(7),
		:crocodile=> rand(6)
	},
	'emily'=> {
		:sumo=> rand(2),
		:spaghetti=> rand(10),
		:boerewors=> rand(2),
		:assassinating=> rand(5),
		:crocodile=> rand(5)
	},
	'erica'=> {
		:sumo=> rand(10), #Asian calves 
		:spaghetti=> rand(4),
		:boerewors=> rand(4),
		:assassinating=> rand(8),
		:crocodile=> rand(3)
	},
	'ian'=> {
		:sumo=> rand(7),
		:spaghetti=> rand(5),
		:boerewors=> rand(7),
		:assassinating=> rand(5),
		:crocodile=> rand(6)
	},
	'isabel'=> {
		:sumo=> rand(4),
		:spaghetti=> rand(7),
		:boerewors=> rand(0),
		:assassinating=> rand(3),
		:crocodile=> rand(7)
	},
	'jessie'=> {
		:sumo=> rand(5),
		:spaghetti=> rand(6),
		:boerewors=> rand(4),
		:assassinating=> rand(7),
		:crocodile=> rand(7)
	},
	'josh'=> {
		:sumo=> rand(7),
		:spaghetti=> rand(2),
		:boerewors=> rand(8),
		:assassinating=> rand(7),
		:crocodile=> rand(7)
	},
	'julian'=> {
		:sumo=> rand(7),
		:spaghetti=> rand(4),
		:boerewors=> rand(9),
		:assassinating=> rand(5),
		:crocodile=> rand(6)
	},
	'julianne'=> {
		:sumo=> rand(1),
		:spaghetti=> rand(10),
		:boerewors=> rand(0),
		:assassinating=> rand(2),
		:crocodile=> rand(2)
	},
	'khangwelo'=> {
		:sumo=> rand(7),
		:spaghetti=> rand(7),
		:boerewors=> rand(5),
		:assassinating=> rand(6),
		:crocodile=> rand(8)
	},
	'leila'=> {
		:sumo=> rand(2),
		:spaghetti=> rand(7),
		:boerewors=> rand(10),
		:assassinating=> rand(4),
		:crocodile=> rand(5)
	},
	'melissa'=> {
		:sumo=> rand(5),
		:spaghetti=> rand(5),
		:boerewors=> rand(5),
		:assassinating=> rand(5),
		:crocodile=> rand(5)
	},
	'praise'=> {
		:sumo=> rand(5),
		:spaghetti=> rand(5),
		:boerewors=> rand(3),
		:assassinating=> rand(10),
		:crocodile=> rand(6)
	},
	'rachel'=> {
		:sumo=> rand(4),
		:spaghetti=> rand(4),
		:boerewors=> rand(8),
		:assassinating=> rand(9),
		:crocodile=> rand(6)
	},
	'rebecca'=> {
		:sumo=> rand(1),
		:spaghetti=> rand(10),
		:boerewors=> rand(0),
		:assassinating=> rand(6),
		:crocodile=> rand(5)
	},
	'richard'=> {
		:sumo=> rand(6),
		:spaghetti=> rand(6),
		:boerewors=> rand(10),
		:assassinating=> rand(5),
		:crocodile=> rand(4)
	},
	'robert_k'=> {
		:sumo=> rand(6),
		:spaghetti=> rand(6),
		:boerewors=> rand(8),
		:assassinating=> rand(6),
		:crocodile=> rand(6)
	},
	'sammy'=> {
		:sumo=> rand(8),
		:spaghetti=> rand(2),
		:boerewors=> rand(10),
		:assassinating=> rand(7),
		:crocodile=> rand(6)
	},
	'sarah'=> {
		:sumo=> rand(2),
		:spaghetti=> rand(9),
		:boerewors=> rand(0),
		:assassinating=> rand(8),
		:crocodile=> rand(3)
	},
	'seth'=> {
		:sumo=> rand(2),
		:spaghetti=> rand(7),
		:boerewors=> rand(7),
		:assassinating=> rand(8),
		:crocodile=> rand(6)
	},
	'tali'=> {
		:sumo=> rand(1),
		:spaghetti=> rand(8),
		:boerewors=> rand(0),
		:assassinating=> rand(6),
		:crocodile=> rand(8)
	},
	'tebogo'=> {
		:sumo=> rand(3),
		:spaghetti=> rand(8),
		:boerewors=> rand(5),
		:assassinating=> rand(7),
		:crocodile=> rand(7)
	},
	'therveshan'=> {
		:sumo=> rand(8),
		:spaghetti=> rand(2),
		:boerewors=> rand(8),
		:assassinating=> rand(7),
		:crocodile=> rand(3)
	},
	'thobs'=> {
		:sumo=> rand(6),
		:spaghetti=> rand(6),
		:boerewors=> rand(4),
		:assassinating=> rand(6),
		:crocodile=> rand(8)
	},
	'wes'=> {
		:sumo=> rand(5),
		:spaghetti=> rand(3),
		:boerewors=> rand(9),
		:assassinating=> rand(10),
		:crocodile=> rand(7)
	}
}
	@fighter_one = person_one
	@fighter_one_performance = fighters[person_one][battle_type.to_sym].to_i
	@fighter_two = person_two
	@fighter_two_performance = fighters[person_two][battle_type.to_sym].to_i

	battles = {"sumo" => "Sumo Battle", "spaghetti" => "Spaghetti Whip Battle", "boerewors" => "Boerewors Eating Competition", 
		"assassinating" => "Assassinating Wes", "crocodile" => "Crocodile Chariot Racing"}
	battle_type = battle_type.downcase
	@battle = battles[battle_type]

	erb :result
end

# post 'url' do
# 	puts params.inspect
# 	# post parameters in sinatra
# 	# redirect_to
# end




#Richard and Jessie Are The Best
