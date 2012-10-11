require 'test/unit'
require 'Cocktail_Companion'


 class Cocktail_Companion_Test< Test::Unit::TestCase

   def test_01_spirits
    ingredient_lib
     assert_equal 'Absinthe' , ingredients['spirits'][1] 
   end
    def test_02_mixers
    ingredient_lib
     assert_equal 'club soda' , ingredients['mixers'][1] 
   end
   # def test_03_spirits
   #  ingredient_libary
   #   assert_equal 'Absinthe' , puts ingredients['spirits'][1] 
   # end
   # def test_04_mixers
   #  ingredient_libary
   #   assert_equal 'club soda' , puts ingredients['mixers'][1] 
   # end

end
