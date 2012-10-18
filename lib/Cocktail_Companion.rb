require ('csv')
require 'stringio'

class Cocktail_Maker  
     def initialize(stdout = STDOUT)
        @stdout = stdout
    end
    def instructions
        @stdout.puts "Welcome to Cocktail Companion!\n Please tell me the ingredients you have on hand in this format (example entry: 1 2 3) then press return to move thorugh the categories!"
    end 
    
    def ingredients
        {
            'spirits' => {1=>'Absinthe',2=>'Brandy',3=>'Gin',4=>'Rum',5=>'Scotch',6=>'Southern Comfort',7=>'Tequila',8=>'Vodka',9=>'Whiskey'},        
            'mixers' => {1=>'Club soda',2=>'Coca-Cola',3=>'Coconut cream',4=>'coconut water',5=>'Coffee',6=>'Espresso',7=>'Ginger Ale',8=>'Ginger Beer',9=>'Tonic Water'}, 
            'fruits_juices' => {1=>'Apple Cider',2=>'Cranberry Juice',3=>'Grapefruit Juice',4=>'Grapefruit',5=>'Hard Cider',6=>'Lemon Juice',7=>'Lemon',8=>'Lime Juice',9=>'Lime',10=>'Orange Juice',11=>'Orange',12=>'Papaya Juice',13=>'Pineapple Juice',14=>'pineapple',15=>'raspberries',16=>'strawberries',17=>'tomato juice'}, 
            'liqueurs_bitters' => {1=>'absinthe',2=>'angostura bitters',3=>'anisette',4=>'apricot liqueur',5=>'benedictine',6=>'bitters',7=>'chambord liqueur',8=>'cointreau',9=>'creme de cacao',10=>'creme de cassis',11=>'curacao',12=>'drambuie',13=>'grand marnier',14=>'creme de menthe',15=>'kahlua',16=>'maraschino',17=>'orange bitters',18=>'orange curacao',19=>'pernod',20=>'Peychauds bitters',21=>'Yellow chartreuse',22=>'Triple Sec'}, 
            'syrups' => {1=>'cane syrup',2=>'grenadine',3=>'lemon syrup',4=>'orgeat syrup',5=>'raspberry syrup',6=>'Roses lime juice',7=>'simple syrup'}, 
            'pantry_items' => {1=>'allspice',2=>'brown sugar',3=>'butter',4=>'cinnamon sticks',5=>'cloves',6=>'eggs',7=>'heavy cream',8=>'honey',9=>'horseradish',10=>'maple sugar',11=>'milk',12=>'mint',13=>'nutmeg',14=>'pepper',15=>'salt',16=>'superfine sugar',17=>'Tabasco',18=>'tea',19=>'whipped cream',20=>'worcestershire sauce'} 
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
            if @spirits.any? {|spirit| row_string.include?(spirit)} || @mixers.any? {|mixer| row_string.include?(mixer)} || @fruits_juices.any? {|fruits_juices| row_string.include?(fruits_juices)} || @syrups.any? {|syrups| row_string.include?(syrups)}|| @pantry_items.any? {|pantry_items| row_string.include?(pantry_items)}
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

