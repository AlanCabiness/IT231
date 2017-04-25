class IPricesController < ApplicationController
  before_action :set_i_price, only: [:show, :edit, :update, :destroy]

  # GET /i_prices
  # GET /i_prices.json
  def index
    @i_prices = IPrice.all
  end

  # GET /i_prices/1
  # GET /i_prices/1.json
  def show
  end

  # GET /i_prices/new
  def new
    @i_price = IPrice.new
  end

  # GET /i_prices/1/edit
  def edit
  end

  # POST /i_prices
  # POST /i_prices.json
  def create
    @i_price = IPrice.new(i_price_params)

    respond_to do |format|
      if @i_price.save
        format.html { redirect_to @i_price, notice: 'I price was successfully created.' }
        format.json { render :show, status: :created, location: @i_price }
      else
        format.html { render :new }
        format.json { render json: @i_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /i_prices/1
  # PATCH/PUT /i_prices/1.json
  def update
    respond_to do |format|
      if @i_price.update(i_price_params)
        format.html { redirect_to @i_price, notice: 'I price was successfully updated.' }
        format.json { render :show, status: :ok, location: @i_price }
      else
        format.html { render :edit }
        format.json { render json: @i_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /i_prices/1
  # DELETE /i_prices/1.json
  def destroy
    @i_price.destroy
    respond_to do |format|
      format.html { redirect_to i_prices_url, notice: 'I price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_i_price
      @i_price = IPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def i_price_params
      params.require(:i_price).permit(:game, :itemName, :itemId, :price, :tradeValue, :rating)
    end
end
