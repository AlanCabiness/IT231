class MainController < ApplicationController


  require 'digest/md5'
  REALM = "localhost"


  def browseSeries
    @ratings = Rating.all.order("series")
  end

  def search
    @results=0
    if !params[:hoorayForSearch].nil?
      @results=1
      @searchinput = params[:hoorayForSearch]
      @searchcriteria="%"+@searchinput+"%"
      @series = Rating.where("series like '"+@searchcriteria+"' or network like '"+@searchcriteria+"'")
    end
  end

  def browseViewership
    @ratings = Rating.all.order("viewership")
  end

  def browseRating
    @ratings = Rating.all.order("rating")
  end

  def browseShare
    @ratings = Rating.all.order("share")
  end

  def browseDate
    @ratings = Rating.all.order("date")
  end

  def browseNetwork
    @ratings = Rating.all.order("network")
  end

  def login
    @username = ''
    @password = ''
    userhash = {}
    user = ''
    userid = session[:user_id]
    if !userid.nil?
      user = User.where('id = ?', userid)[0]
      redirect_to main_userPage_path, :notice => "Welcome to your page, "+user.username
    else
      if !params[:username].nil?

        if !params[:username].nil?
          @username = params[:username]
        end

        if !params[:password].nil?
          @password = params[:password]
        end

        user = User.where('username = ?', @username)[0]
        userhash.store(user.username, user.password)

        authenticate_or_request_with_http_digest(REALM) do |username|
          userhash[username]
          session[:user_id] = user.id
        end
      end
    end
  end

  def createUser
    @username = ''
    @password = ''
    @email = ''

    if !params[:username].nil?
      @username = params[:username]
    end

    if !params[:password].nil?
      @password = params[:password]
    end

    if !params[:email].nil?
      @email = params[:email]
    end

    if !params[:username].nil?
      @newUser = nil
      @newUser = User.new
      @newUser.username = @username
      @newUser.email = @email
      @newUser.password = Digest::MD5.hexdigest([@username, REALM, @password].join(":"))
      @newUser.save

      user = User.find_by_username(@username)
      if !user.nil?
        session[:user_id] = user.id
        redirect_to main_login_path, :notice => "Account created, please log in"
      else
        redirect_to main_createUser_path, :notice => "User creation failed, try again"
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to main_login_path, :notice => "You have been logged out"
  end

  def userPage
    @allratings = Rating.all
    @watched = []
    @productID = nil

    user = User.where('id = ?', session[:user_id])[0]
    if !user.preferences.nil?
      @productID = eval(user.preferences)
      session[:cart_items] = @productID
    end


    if !@productID.nil?
      if @productID.length == 0
        @productID = nil
      end

      @productID.each do |sid|
        @watched.push(Rating.where('id = ?', sid)[0])
      end
    end
  end

  def saveList
    savedArray = []
    if !session[:cart_items].nil?
      savedArray = session[:cart_items]
    end

    Rating.all.each do |favorite|
      fav = params[favorite.id.to_s]
      if !fav.nil?
        savedArray.push(favorite.id)
      end
    end
    user = User.where('id = ?', session[:user_id])[0]
    user.preferences = savedArray
    user.save

    redirect_to main_userPage_path, :notice => "Series saved"
  end

  def removeSeries
    savedArray = []
    if !session[:cart_items].nil?
      savedArray = session[:cart_items]
    end

    savedArray.each do |fid|
      fav = params[fid.to_s]
      if !fav.nil?
        savedArray.delete(fid)
      end
    end
    user = User.where('id = ?', session[:user_id])[0]
    user.preferences = savedArray
    user.save

    redirect_to main_userPage_path, :notice => "Series saved"
  end
end
