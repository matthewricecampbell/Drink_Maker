require 'test/unit'
require 'Cocktail_Companion'
require 'stringio'


 class Cocktail_Companion_Test< Test::Unit::TestCase

   def test_01_spirits
    	c = Cocktail_Maker.new 
     	assert_equal 'Absinthe' , c.ingredients['spirits'][1] 
   end
    
   def test_02_mixers
    	c = Cocktail_Maker.new 
		assert_equal 'Club Soda' , c.ingredients['mixers'][1] 
   end
   
   def test_03_fruits_juices
    	c = Cocktail_Maker.new 
		assert_equal 'Apple Cider' , c.ingredients['fruits_juices'][1] 
   end
   
   def test_04_liqueurs_bitters
     c = Cocktail_Maker.new
     assert_equal 'Absinthe' , c.ingredients['liqueurs_bitters'][1] 
   end
   
   def test_05_syrups
    c = Cocktail_Maker.new
     assert_equal 'Cane Syrup' , c.ingredients['syrups'][1] 
   end 
   
   def test_06_syrups
    c = Cocktail_Maker.new
     assert_equal 'Allspice' , c.ingredients['pantry_items'][1] 
   end

   def test_07_a_instructions
    stdout = StringIO.new()
    cocktail = Cocktail_Maker.new(stdout)
    cocktail.instructions
    assert_equal( stdout.string, "Welcome to Cocktail Companion!\n Please tell me the ingredients you have on hand in this format example entry:\n 1 2 3\n Then press return to move thorugh the categories!\n")
   end

   def test_07_b_ingredient_printer_getter
    stdout = StringIO.new()
    cocktail = Cocktail_Maker.new(stdout)
    cocktail.ingredient_printer_getter
    assert_equal( stdout.string, "What spirits do you have on hand?\nWhat mixers do you have on hand?\nWhat fruits and juices do you have on hand?\nWhat liqueurs and bitters do you have on hand?\nWhat syrups do you have on hand?\nWhat pantry items do you have on hand?\n")
   end
end
