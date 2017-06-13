require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get products" do
    get reports_products_url
    assert_response :success
  end

  test "should get users" do
    get reports_users_url
    assert_response :success
  end

end
