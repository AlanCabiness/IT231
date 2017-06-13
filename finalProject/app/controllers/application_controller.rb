require 'digest/md5'
REALM = "localhost"
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :authorize, except: [:login, :createUser, :about, :index, :contact, :help, :privacy]
  protected
  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to main_login_path, :notice => 'Please log in'
    end
  end
end
