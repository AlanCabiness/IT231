require 'digest/sha2'
class HomeController < ApplicationController

  before_filter :authenticate, except: [:about, :contact, :index, :search, :help, :privacy]

  def authenticate
    userhash = { }
    User.all.each do |user|
      userhash.store(user.username, user.password)
    end
    authenticate_or_request_with_http_digest("localhost") do |username|
      userhash[username]
    end
  end

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

  def settings
    @teams = Sport.all


  end

  def help

  end

  def privacy

  end

  def cart

  end

end
