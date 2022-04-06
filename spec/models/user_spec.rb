require 'rails_helper'

RSpec.describe User, type: :model do
    before do
        @user = User.new(email:"user3@ex.com",password:"user123")
    end

    it "should be valid with valid attributes" do
        @user.email = nil
        expect(@user).to_not be_valid
    end 

    it "should be valid with valid user" do
        @user.password = nil
        expect(@user).to_not be_valid
    end 

    it "should have unique email" do
        @user1 = User.create(email:"user4@ex.com",password:"user123")
        @user2 = User.new(email:"user4@ex.com",password:"user123")
        expect(@user2).to_not be_valid
    end


end