class HomeController < ApplicationController
  def index

    promos = Promotion.all
    promos.each do |i|
      if i.startDate <= Date.today && i.endDate >= Date.today
        @promotion = i
      end
    end
  end

  def about
  end

  def contact
  end

  def search
  end
end
