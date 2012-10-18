require ('csv')
require 'stringio'

class Cocktail_Maker  
     def initialize(stdout = STDOUT)
        @stdout = stdout
    end
    def instructions
        @stdout.puts "Welcome to Cocktail Companion!\n Please tell me the ingredients you have on hand in this format example entry:\n 1 2 3\n Then press return to move thorugh the categories!"
    end 
    
    def ingredients
        {
            'spirits' => {1=>'Absinthe',2=>'Brandy',3=>'Gin',4=>'Rum',5=>'Scotch',6=>'Southern Comfort',7=>'Tequila',8=>'Vodka',9=>'Whiskey'},        
            'mixers' => {1=>'Club Soda',2=>'Coca-Cola',3=>'Coconut Cream',4=>'Coconut Water',5=>'Coffee',6=>'Espresso',7=>'Ginger Ale',8=>'Ginger Beer',9=>'Tonic Water'}, 
            'fruits_juices' => {1=>'Apple Cider',2=>'Cranberry Juice',3=>'Grapefruit Juice',4=>'Grapefruit',5=>'Hard Cider',6=>'Lemon Juice',7=>'Lemon',8=>'Lime Juice',9=>'Lime',10=>'Orange Juice',11=>'Orange',12=>'Papaya Juice',13=>'Pineapple Juice',14=>'pineapple',15=>'raspberries',16=>'strawberries',17=>'tomato juice'}, 
            'liqueurs_bitters' => {1=>'Absinthe',2=>'Angostura Bitters',3=>'Anisette',4=>'Apricot Liqueur',5=>'Benedictine',6=>'Bitters',7=>'Chambord Liqueur',8=>'Cointreau',9=>'Creme De Cacao',10=>'Creme De Cassis',11=>'Curacao',12=>'Drambuie',13=>'Grand Marnier',14=>'Creme De Menthe',15=>'Kahlua',16=>'Maraschino',17=>'Orange Bitters',18=>'Orange Curacao',19=>'Pernod',20=>'Peychauds Bitters',21=>'Yellow Chartreuse',22=>'Triple Sec'}, 
            'syrups' => {1=>'Cane Syrup',2=>'Grenadine',3=>'Lemon Syrup',4=>'Orgeat Syrup',5=>'Raspberry Syrup',6=>'Roses Lime Juice',7=>'Simple Syrup'}, 
            'pantry_items' => {1=>'Allspice',2=>'Brown Sugar',3=>'Butter',4=>'Cinnamon Sticks',5=>'Cloves',6=>'Egg',7=>'Heavy Cream',8=>'Honey',9=>'Horseradish',10=>'Maple Sugar',11=>'Milk',12=>'Mint',13=>'Nutmeg',14=>'Pepper',15=>'Salt',16=>'Superfine Sugar',17=>'Tabasco',18=>'Tea',19=>'Whipped Cream',20=>'Worcestershire Sauce'} 
        }
    end
    
    def ingredient_printer_getter
        ingredients['spirits'].each {|key, value| puts "#{key} #{value} "}
        puts 'What spirits do you have on hand?'
        @spirits = gets.split.map {|ingredient| ingredients['spirits'][ingredient.to_i] }
        
        ingredients['mixers'].each {|key, value| puts "#{key} #{value} "}
        puts 'What mixers do you have on hand?'
        @mixers = gets.split.map {|ingredient| ingredients['mixers'][ingredient.to_i] }
        
        ingredients['fruits_juices'].each {|key, value| puts "#{key} #{value}" }
        puts 'What fruits and juices do you have on hand?'
        @fruits_juices = gets.split.map {|ingredient| ingredients['fruits_juices'][ingredient.to_i] }
        
        ingredients['liqueurs_bitters'].each {|key, value| puts "#{key} #{value}" }
        puts 'What liqueurs and bitters do you have on hand?'
        @liqueurs_bitters = gets.split.map {|ingredient| ingredients['liqueurs_bitters'][ingredient.to_i] }
        
        ingredients['syrups'].each {|key, value| puts "#{key} #{value}"}
        puts 'What syrups do you have on hand?'
        @syrups = gets.split.map {|ingredient| ingredients['syrups'][ingredient.to_i] }
        
        ingredients['pantry_items'].each {|key, value| puts "#{key} #{value}"}
        puts 'What pantry items do you have on hand?'
        @pantry_items = gets.split.map {|ingredient| ingredients['pantry_items'][ingredient.to_i] }
    end
#52 ex: if any @spirits ie:["absinthe" or "rum"] are included in a row return true and add that row to an array and puts out
    def recipe_finder
        CSV.open("drink_recipes_database.csv", "r").each do |row|
            drink_recipe_array = []
            row_string = row.join("")
            if @spirits.any? {|spirit| row_string.include?(spirit)} && @fruits_juices.any? {|fruits_juices| row_string.include?(fruits_juices)} && @liqueurs_bitters.any? {|liqueurs_bitters| row_string.include?(liqueurs_bitters)} && @syrups.any? {|syrups| row_string.include?(syrups)}
                drink_recipe_array += row
                puts row 
            elsif (@spirits.any? {|spirit| row_string.include?(spirit)} && @mixers.any? {|mixer| row_string.include?(mixer)}) || (@spirits.any? {|spirit| row_string.include?(spirit)} && @fruits_juices.any? {|fruits_juices| row_string.include?(fruits_juices)}) || (@spirits.any? {|spirit| row_string.include?(spirit)}&& @syrups.any? {|syrups| row_string.include?(syrups)}) || (@spirits.any? {|spirit| row_string.include?(spirit)} && @pantry_items.any? {|pantry_items| row_string.include?(pantry_items)})
                drink_recipe_array += row
                puts row
            elsif @spirits.any? {|spirit| row_string.include?(spirit)} #need to do: only put 3 recipes
                drink_recipe_array += row
                puts row
            end
        end
    end

    def array_inspector
        puts @spirits.inspect
        puts @pantry_items.inspect
    end

    # def find_recipe_with_this_spirit(spirit)
    #     puts "--- looking for this: #{spirit}"
    #     CSV.open("drink_recipes_database.csv", "r").each do |row|
    #         printable_row = row.join(" ")
    #         if printable_row =~ /#{spirit}/
    #             puts printable_row
    #         end
    #     end
    # end

end



c = Cocktail_Maker.new 
c.instructions
c.ingredient_printer_getter
# c.find_recipe_with_this_spirit(@spirits)
c.recipe_finder
# c.array_inspector

