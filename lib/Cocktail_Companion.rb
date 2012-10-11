# require 'csv'
# CSV.open('drink_recipes_database.csv','r').each do ||
# 	puts person.inspect
# end

def instructions
	puts "Welcome to Cocktail Companion!\n Please tell me the ingredients you have on hand in this format (example entry: 1 2 3) then press return to move thorugh the categories!\n "
end
def ingredient_lib
	ingredients = {
		'spirits' => {1=>'Absinthe',2=>'Brandy',3=>'Gin',4=>'Rum',5=>'Tequila',6=>'Vodka',7=>'Whiskey'},        
		'mixers' => {1=>'club soda',2=>'Coca-Cola',3=>'coconut cream',4=>'coconut water',5=>'coffee',6=>'espresso',7=>'ginger ale',8=>'ginger beer',9=>'tonic water'}, 
		'fruits_juices' => {1=>'apple cider',2=>'cranberry juice',3=>'grapefruit juice',4=>'grapefruit',5=>'hard cider',6=>'lemon juice',7=>'lemon',8=>'lime juice',9=>'lime',10=>'orange juice',11=>'orange',12=>'papaya juice',13=>'pineapple juice',14=>'pineapple',15=>'raspberries',16=>'strawberries',17=>'tomato juice'}, 
		'liqueurs_bitters' => {1=>'absinthe',2=>'Angostura bitters',3=>'anisette',4=>'apricot liqueur',5=>'Benedictine',6=>'bitters',7=>'Chambord liqueur',8=>'Cointreau',9=>'creme de cacao',10=>'creme de cassis',11=>'curacao',12=>'Drambuie',13=>'Grand Marnier',14=>'creme de menthe',15=>'Kahlua',16=>'Maraschino',17=>'orange bitters',18=>'orange curacao',19=>'Pernod',20=>'Peychauds bitters',21=>'yellow Chartreuse'}, 
		'syrups' => {1=>'cane syrup',2=>'grenadine',3=>'lemon syrup',4=>'orgeat syrup',5=>'raspberry syrup',6=>'Roses lime juice',7=>'simple syrup'}, 
		'pantry_items' => {1=>'allspice',2=>'brown sugar',3=>'butter',4=>'cinnamon sticks',5=>'cloves',6=>'eggs',7=>'heavy cream',8=>'honey',9=>'horseradish',10=>'maple sugar',11=>'milk',12=>'mint',13=>'nutmeg',14=>'pepper',15=>'salt',16=>'superfine sugar',17=>'Tabasco',18=>'tea',19=>'whipped cream',20=>'Worcestershire sauce'} 
	}
	ingredients['spirits'].each {|key, value| puts "#{key} #{value} "}
		puts 'What spirits do you have on hand?'
		@spirits = gets.split
	ingredients['mixers'].each {|key, value| puts "#{key} #{value} "}
		puts 'What mixers do you have on hand?'
		@mixers = gets.split
	ingredients['fruits_juices'].each {|key, value| puts "#{key} #{value}" }
		puts 'What fruits and juices do you have on hand?'
		@fruits_juices = gets.split
	ingredients['liqueurs_bitters'].each {|key, value| puts "#{key} #{value}" }
		puts 'What liqueurs and bitters do you have on hand?'
		@liqueurs_bitters = gets.split
	ingredients['syrups'].each {|key, value| puts "#{key} #{value}"}
		puts 'What syrups do you have on hand?'
		@syrups = gets.split
	ingredients['pantry_items'].each {|key, value| puts "#{key} #{value}"}
		puts 'What pantry items do you have on hand?'
		@pantry_items = gets.split
end

def recipe_finder()

end

def recipes
	if @spirits.include?('7') & @mixers.include?('2')
		puts "You should make a jack and coke!\n 2oz Whiskey\n 10oz Coca-Cola\n Top off with ice and enjoy!"
	end
	if @spirits.include?('3') & @mixers.include?('9')
		puts "You should make a gin and tonic!\n 2oz Gin\n 6oz Tonic\n Top off with ice and a slice of lime!"
	end
end

	instructions
	ingredient_lib
	recipes







# examples:
# if spirits has 6 & mixer has 9
# 	puts 'You should make a vodka tonic!'
# if spirits has 3 & mixers has 4
# 	puts 'You should make a coconut water & gin!'





# def ingredients 
# 	spirits = ['1.Absinthe','2.Brandy','3.Gin','4.Rum','5.Tequila','6.Vodka','7.Whiskey']        
# 	mixers = ['1.club soda','2.Coca-Cola','3.coconut cream','4.coconut water','5.coffee','6.espresso','7.ginger ale','8.ginger beer'] 
# 	fruits_juices = ['1.apple cider','2.cranberry juice','3.grapefruit juice','4.grapefruit','5.hard cider','6.lemon juice','7.lemon','8.lime juice','9.lime','10.orange juice','11.orange','12.papaya juice','13.pineapple juice','14.pineapple','15.raspberries','16.strawberries','17.tomato juice'] 
# 	liqueurs_bitters = ['1.absinthe','2.Angostura bitters','3.anisette','4.apricot liqueur','5.Benedictine','6.bitters','7.Chambord liqueur','8.Cointreau','9.creme de cacao','10.creme de cassis','11.curacao','12.Drambuie','13.Grand Marnier','14.creme de menthe','15.Kahlua','16.Maraschino','17.orange bitters','18.orange curacao','19.Pernod','20.Peychauds bitters','21.yellow Chartreuse']
# 	syrups = ['1.cane syrup','2.grenadine','3.lemon syrup','4.orgeat syrup','5.raspberry syrup','6.Roses lime juice','7.simple syrup']
# 	pantry_items = ['1.allspice','2.brown sugar','3.butter','4.cinnamon sticks','5.cloves','6.eggs','7.heavy cream','8.honey','9.horseradish','10.maple sugar','11.milk','12.mint','13.nutmeg','14.pepper','15.salt','16.superfine sugar','17.Tabasco','18.tea','19.whipped cream','20.Worcestershire sauce'] 
	
# 	ingredient_list = spirits + mixers + fruits_juices + liqueurs_bitters + syrups + pantry_items
# 	puts ingredient_list
# end

# ingredients


# puts 'Mixers'
# mixers = gets.chomp
# puts 'Fruits & Juices'
# fruits_juices = gets.chomp
# puts 'Liqueurs & Bitters'
# liqueurs_bitters = gets.chomp
# puts 'Syrups'
# syrups = gets.chomp
# puts 'Pantry Items'
# pantry_items = gets.chomp






