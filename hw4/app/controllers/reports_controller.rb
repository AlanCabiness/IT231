class ReportsController < ApplicationController
  def listing
  end

  def customers
    @allCustomers=Customer.all

  end

  def products
    @allProducts=Product.all
  end

  def sales
    @allSales=Sale.all
  end
end
