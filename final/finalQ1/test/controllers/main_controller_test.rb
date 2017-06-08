require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get browse" do
    get main_browse_url
    assert_response :success
  end

  test "should get search" do
    get main_search_url
    assert_response :success
  end

end
