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
		assert_equal 'Club soda' , c.ingredients['mixers'][1] 
   end
   
   def test_03_fruits_juices
    	c = Cocktail_Maker.new 
		assert_equal 'apple cider' , c.ingredients['fruits_juices'][1] 
   end
   
   def test_04_liqueurs_bitters
     c = Cocktail_Maker.new
     assert_equal 'absinthe' , c.ingredients['liqueurs_bitters'][1] 
   end
   
   def test_05_syrups
    c = Cocktail_Maker.new
     assert_equal 'cane syrup' , c.ingredients['syrups'][1] 
   end 
   
   def test_06_syrups
    c = Cocktail_Maker.new
     assert_equal 'allspice' , c.ingredients['pantry_items'][1] 
   end

   def test_07
    stdout = StringIO.new()
    cocktail = Cocktail_Maker.new([], stdout)
    cocktail.instructions
    assert_equal( stdout.string, "Welcome to Cocktail Companion!\n Please tell me the ingredients you have on hand in this format (example entry: 1 2 3) then press return to move thorugh the categories!\n")
   end

end
