require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get main_home_url
    assert_response :success
  end

  test "should get index" do
    get main_index_url
    assert_response :success
  end

  test "should get about" do
    get main_about_url
    assert_response :success
  end

  test "should get contact" do
    get main_contact_url
    assert_response :success
  end

  test "should get help" do
    get main_help_url
    assert_response :success
  end

  test "should get privacy" do
    get main_privacy_url
    assert_response :success
  end

  test "should get search" do
    get main_search_url
    assert_response :success
  end

  test "should get cart" do
    get main_cart_url
    assert_response :success
  end

  test "should get preferences" do
    get main_preferences_url
    assert_response :success
  end

end
