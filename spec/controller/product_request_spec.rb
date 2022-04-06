require 'rails_helper'

RSpec.describe "Products", type: :request do

  before do
    @user= User.new(email:"user@ex.com",password:"user123")
    @user.save
    @product = Product.create(product_name:"p4",description:"p4 description", price:12, user_id:@user.id)  
  end
  
  it "gets all products" do
    get products_path
    expect(response).to be_successful 
  end

  it "get new product" do
    get new_product_path
    expect(response).to be_successful 
  end
  
  it "show products" do
    get product_path(@product.id)
    expect(response).to be_successful
  end
  
  
  it "edit a product" do
    get edit_product_path(@product.id)
    expect(response).to be_successful
  end

end