require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  def setup
    @user = User.new(email: "user1@ex.com", password: "user123")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "should be unique" do
    @user.save
    @user2 = User.new(email: "user2@ex.com")
    assert_not @user2.save
  end
end
