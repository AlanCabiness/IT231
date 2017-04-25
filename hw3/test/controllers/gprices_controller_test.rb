require 'test_helper'

class GpricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gprice = gprices(:one)
  end

  test "should get index" do
    get gprices_url
    assert_response :success
  end

  test "should get new" do
    get new_gprice_url
    assert_response :success
  end

  test "should create gprice" do
    assert_difference('Gprice.count') do
      post gprices_url, params: { gprice: { platform: @gprice.platform, price: @gprice.price, rating: @gprice.rating, release: @gprice.release, title: @gprice.title, tradeValue: @gprice.tradeValue } }
    end

    assert_redirected_to gprice_url(Gprice.last)
  end

  test "should show gprice" do
    get gprice_url(@gprice)
    assert_response :success
  end

  test "should get edit" do
    get edit_gprice_url(@gprice)
    assert_response :success
  end

  test "should update gprice" do
    patch gprice_url(@gprice), params: { gprice: { platform: @gprice.platform, price: @gprice.price, rating: @gprice.rating, release: @gprice.release, title: @gprice.title, tradeValue: @gprice.tradeValue } }
    assert_redirected_to gprice_url(@gprice)
  end

  test "should destroy gprice" do
    assert_difference('Gprice.count', -1) do
      delete gprice_url(@gprice)
    end

    assert_redirected_to gprices_url
  end
end
