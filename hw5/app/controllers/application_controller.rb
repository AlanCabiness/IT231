class ApplicationController < ActionController::Base


  protect_from_forgery with: :exception

  before_filter :login, except: [:login]
  def authenticate
    userhash = {}
    User.all.each do |user|
      userhash.store(user.username, user.password)
    end
    authenticate_or_request_with_http_digest("localhost") do |username|
      userhash[username]
    end
  end
end
