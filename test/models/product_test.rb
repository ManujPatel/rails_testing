require "test_helper"

class ProductTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   def setup
    @user  = User.new(email:"User0@ex.com", password: "user123")
    @user.save
    @product = Product.create(product_name: "p8", description: "p8 description", price: 120, user_id:@user.id)
   end

   test "should be valid" do
    @user1  = User.new(email:"User9@ex.com", password: "user123")
    @user1.save
    @product = Product.create(product_name: "p9", description: "p9 description", price: 120, user_id:@user.id)
    assert @product.valid?
   end

   test "should have name" do
    @product = Product.new
    @product.product_name =  ""
    assert_not @product.valid?
   end


end
