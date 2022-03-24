require "test_helper"

class ProductTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   def setup
    @product = Product.new(product_name: "p8", description: "p8 description", price: 120, user_id:1)
   end

   test "should be valid" do
    @product = Product.new(product_name: "p9", description: "p8 description", price: 120, user_id:1)
    assert @product.valid?
   end

end
