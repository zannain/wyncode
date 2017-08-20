require 'test_helper'

class BottlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bottles_index_url
    assert_response :success
  end

end
