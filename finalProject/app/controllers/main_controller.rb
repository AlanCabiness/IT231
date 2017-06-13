require 'digest/md5'
require 'date'
REALM = "localhost"
class MainController < ApplicationController

  def home
  end

  def index
  end

  def about
  end

  def contact
  end

  def help
  end

  def privacy
  end

  def search
    @results=0
    if !params[:hoorayForSearch].nil?
      @results=1
      @searchinput = params[:hoorayForSearch]
      @searchcriteria="%"+@searchinput+"%"
      @items = Product.where("game like '"+@searchcriteria+"' or itemName like '"+@searchcriteria+"'")
    end
  end

  def cart
  end

  def preferences
  end

  def login
    @username = ''
    @password = ''
    userhash = {}
    user = ''
    userid = session[:user_id]
    if !userid.nil?
      user = User.where('id = ?', userid)[0]
      redirect_to main_cart_path, :notice => "Welcome to VGSwap, "+user.username
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

  def logout
    session[:user_id] = nil
    redirect_to main_login_path, :notice => "You have been logged out"
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

  def cart
    @allItems = Product.all
    @inCart = []
    @productID = nil

    user = User.where('id = ?', session[:user_id])[0]
    if !user.cart.nil?
      @productID = eval(user.cart)
      session[:cart_items] = @productID
    end


    if !@productID.nil?
      if @productID.length == 0
        @productID = nil
      end

      @productID.each do |sid|
        @inCart.push(Product.where('id = ?', sid)[0])
      end
    end
  end

  def saveList
    savedArray = []
    if !session[:cart_items].nil?
      savedArray = session[:cart_items]
    end

    Product.all.each do |favorite|
      fav = params[favorite.id.to_s]
      if !fav.nil?
        savedArray.push(favorite.id)
      end
    end
    user = User.where('id = ?', session[:user_id])[0]
    user.cart = savedArray
    user.save

    redirect_to main_cart_path, :notice => "Cart Updated"
  end

  def removeItems
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
    user.cart = savedArray
    user.save

    redirect_to main_cart_path, :notice => "Cart Updated"
  end

  def checkout
    total = 0
    user = User.where('id = ?', session[:user_id])[0]
    if !user.cart.nil?
      savedArray = eval(user.cart)
      savedArray.each do |x|
        item = Product.where('id = ?', x)[0]
        total+=item.price
      end
    end
    savedArray = eval(user.cart)
    savedArray.each do |fid|
      fav = params[fid.to_s]
      if !fav.nil?
        savedArray.delete(fid)
      end
    end
    user = User.where('id = ?', session[:user_id])[0]
    user.cart = nil
    user.save

    sale = Sale.create({user:session[:user_id], amount:total, date:Date.today})
    redirect_to main_cart_path, :notice => ["Thank you for your purchase! Your total is $",total].join('')
  end
end

