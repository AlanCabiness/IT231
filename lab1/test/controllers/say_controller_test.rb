require 'test_helper'

class SayControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get say_hello_url
    assert_response :success
  end

  test "should get response1" do
    get say_response1_url
    assert_response :success
  end

  test "should get response2" do
    get say_response2_url
    assert_response :success
  end

end
