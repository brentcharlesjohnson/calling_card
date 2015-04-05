require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(name: "bob", email: "bob@greatwhitenorth.com", password:
										 "doughnut", password_confirmation: "doughnut") 
	end

	test "associated microposts should be destroyed" do 
		@user.save
		@user.microposts.create!(content: "beerhunter")
		assert_difference 'Micropost.count', -1 do 
			@user.destroy
		end
	end 
end
