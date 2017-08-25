require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    one = users(:one)
    puts "Hello #{one.name}"

    user_1 = users(:user_1)
    puts "Hello #{user_1.name}"
    assert true
  end

  # test 'the false' do
  #   assert false, 'the false is not true'
  # end

  # test 'fail' do
  #   blargh
  # end

  test 'user email never nil' do
    u = User.new
    u.email = nil
    assert_not u.save, "User emails should never be nil"
  end

end

