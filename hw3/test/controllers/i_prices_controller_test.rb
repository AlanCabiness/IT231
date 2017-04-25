require 'test_helper'

class IPricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @i_price = i_prices(:one)
  end

  test "should get index" do
    get i_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_i_price_url
    assert_response :success
  end

  test "should create i_price" do
    assert_difference('IPrice.count') do
      post i_prices_url, params: { i_price: { game: @i_price.game, itemId: @i_price.itemId, itemName: @i_price.itemName, price: @i_price.price, rating: @i_price.rating, tradeValue: @i_price.tradeValue } }
    end

    assert_redirected_to i_price_url(IPrice.last)
  end

  test "should show i_price" do
    get i_price_url(@i_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_i_price_url(@i_price)
    assert_response :success
  end

  test "should update i_price" do
    patch i_price_url(@i_price), params: { i_price: { game: @i_price.game, itemId: @i_price.itemId, itemName: @i_price.itemName, price: @i_price.price, rating: @i_price.rating, tradeValue: @i_price.tradeValue } }
    assert_redirected_to i_price_url(@i_price)
  end

  test "should destroy i_price" do
    assert_difference('IPrice.count', -1) do
      delete i_price_url(@i_price)
    end

    assert_redirected_to i_prices_url
  end
end
