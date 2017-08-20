require 'test_helper'

class CryptocurrenciesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cryptocurrencies_index_url
    assert_response :success
  end

  test "should get new" do
    get cryptocurrencies_new_url
    assert_response :success
  end

  test "should get show" do
    get cryptocurrencies_show_url
    assert_response :success
  end

  test "should get create" do
    get cryptocurrencies_create_url
    assert_response :success
  end

end
