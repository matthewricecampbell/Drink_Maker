require ('csv')

def recipe_finder
CSV.open("drink_recipes_database.csv", "r").each do |row|
 drink_recipe_array = []
 drink_recipe_array += row
 if drink_recipe_array.include?(/Southern/)
 	puts row
end
	end
end

recipe_finder



# #prints recipes
# def recipe_printer
# drinks = CSV.parse(File.read('drink_recipes_database.csv'))
# puts drinks[3]
# end
# recipe_printer


