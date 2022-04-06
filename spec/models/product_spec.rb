require 'rails_helper'

RSpec.describe User, type: :model do
    before do
        @product = Product.new(product_name:"p4",description:"p4 description", price:12, user_id:1)
    end

    it "should be valid with valid attributes" do
        @product.product_name = nil
        expect(@product).to_not be_valid
    end 

    it "should be valid with valid user" do
        @product.user_id = nil
        expect(@product).to_not be_valid
    end 

    it "should have unique name" do
        @product = Product.create(product_name:"p5",description:"p4 description", price:12, user_id:1)
        @product = Product.new(product_name:"p4",description:"p4 description", price:12, user_id:1)
        expect(@product).to_not be_valid
    end


end