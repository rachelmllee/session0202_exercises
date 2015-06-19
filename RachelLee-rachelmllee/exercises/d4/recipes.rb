dishes = {hash_browns: ["Potatoes", "Butter", "Eggs", "Onions"]}
dishes[:brownies] = ["Flour", "Eggs", "Sugar", "Cocoa powder"]
dishes[:smoothie] = ["Strawberries", "Bananas", "Orange juice"]

recipes = {
	:hash_browns => {
		description: "pan fried potatoes", 
		ingredients: ["Potatoes", "Butter", "Eggs", "Onions"], 
		steps: ["hash the potatoes", "mash the potatoes together", "fry the potatoes"]
	},
	:brownies => {
		description: "yumminess",
		ingredients: ["Flour", "Eggs", "Sugar", "Cocoa powder"], 
		steps: ["mix the ingredients", "put the ingredients in a pan", "put everything in an oven"]
	},
	:lasagna => {
		description: "italian yumminess",
		ingredients: ["Mozzarella", "Tomatoes", "Onions", "Ground beef", "Basil"], 
		steps: ["cut up the fruits", "put everything in the blender", "mix"]
	}
}

puts recipes