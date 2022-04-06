require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get products_path
    assert_response :success
  end

  test "should get new" do
    get new_product_path
    assert_response :success
  end

  test "should get show" do
    @user= User.new(email:"user2@ex.com",password:"user123")
    @user.save
    @product = Product.create(product_name:"p4",description:"p4 description", price:12, user_id:@user.id)  
    get product_path(@product)
    assert_response :success
  end

  test "should get edit" do
    @user= User.new(email:"user@ex.com",password:"user123")
    @user.save
    @product = Product.create(product_name:"p4",description:"p4 description", price:12, user_id:@user.id)  
    get edit_product_path(@product)
    assert_response :success
  end

  
end
