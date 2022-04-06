require "test_helper"

class UserTest < ActiveSupport::TestCase
    test "the truth" do
      assert true
    end

    def setup
      @user = User.new(email: "user41@ex.com", password: "user123")
    end
    
    test "should be valid" do
      assert @user.valid?
    end

    test "should have password " do
      @user = User.new
      @user.password = ""
      assert_not @user.save
    end


    test "should have email " do
      @user = User.new
      @user.email = ""
      assert_not @user.save
    end


end
