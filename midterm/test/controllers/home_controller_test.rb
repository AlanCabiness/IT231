require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get home_Index_url
    assert_response :success
  end

  test "should get ClassInfo" do
    get home_ClassInfo_url
    assert_response :success
  end

  test "should get MidtermExam" do
    get home_MidtermExam_url
    assert_response :success
  end

end
