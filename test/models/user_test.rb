require 'test_helper'

class UserTest < ActiveSupport::TestCase
	 def setup
	 	@user=User.new(name: "mam", email: "eff@gmail.com",password: "foobar",password_confirmation: "foobar")
	 end
	 test "should be valid"  do
	 	assert @user.valid?
	 end

	 test "name should be present" do
	 	@user.name="a"
	 	assert @user.valid?
	 end
	 test "email word limit is 15 chars"do
	 	@user.email="aa@gmail.com"
	 	assert @user.valid?
	end
	test "email should be valid" do
		@user.email="mam@gmail.com"
		assert @user.valid?
	end
	
end
