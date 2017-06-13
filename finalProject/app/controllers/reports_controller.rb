class ReportsController < ApplicationController
  def products
    @allProducts = Product.all
  end

  def users
    @allUsers = User.all
  end
end
