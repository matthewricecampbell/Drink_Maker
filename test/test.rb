require 'test/unit'
require 'Cocktail_Companion'


 class Cocktail_Companion_Test< Test::Unit::TestCase

   def test_01_spirits
    	c = Cocktail_Maker.new 
     	assert_equal 'Absinthe' , c.ingredients['spirits'][1] 
   end
    def test_02_mixers
    	c = Cocktail_Maker.new 
		assert_equal 'club soda' , c.ingredients['mixers'][1] 
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
   def test_05_syrups
    c = Cocktail_Maker.new
     assert_equal 'allspice' , c.ingredients['pantry_items'][1] 
   end

end
