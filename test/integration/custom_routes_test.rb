require 'test_helper'

# Integration tests are used to test the interaction among any number of controllers. 
# They are generally used to test important work flows within your application.

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "that /login route opens the login page" do
		get 'login'
		assert_response :success
	end

	test "that /logout route opens the log out page" do
		get 'logout'
		assert_response :redirect
		assert_redirected_to '/'
	end

	test "that /register route opens the sing up page" do
		get 'register'
		assert_response :success
	end

	test "that a profile page works" do
		get '/jasonseifer'
		assert_response :success
	end
end
