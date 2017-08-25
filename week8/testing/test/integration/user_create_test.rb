require 'test_helper'

class UserCreateTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'a human can create a user' do
    get '/users'
    assert_response :success

    get '/users/new'
    assert_response :success

    assert_difference('User.count') do
      post users_path, params: {user: { email:'t@test.co', name: 'Me' }}
    end
    follow_redirect!

    assert_match(user_path(User.last), path)
    assert_equal 'User was successfully created.', flash[:notice]
  end
end
