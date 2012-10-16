require ('csv')

def spirit_finder
CSV.open("drink_recipes_database.csv", "r").each do |row|
 spirit_array = []
 spirit_array += row
 spirit_array[6]

    end
end
spirit_finder


#prints recipes
def recipe_printer
drinks = CSV.parse(File.read('drink_recipes_database.csv'))
puts drinks[3]
end


