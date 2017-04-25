class GpricesController < ApplicationController
  before_action :set_gprice, only: [:show, :edit, :update, :destroy]

  # GET /gprices
  # GET /gprices.json
  def index
    @gprices = Gprice.all
  end

  # GET /gprices/1
  # GET /gprices/1.json
  def show
  end

  # GET /gprices/new
  def new
    @gprice = Gprice.new
  end

  # GET /gprices/1/edit
  def edit
  end

  # POST /gprices
  # POST /gprices.json
  def create
    @gprice = Gprice.new(gprice_params)

    respond_to do |format|
      if @gprice.save
        format.html { redirect_to @gprice, notice: 'Gprice was successfully created.' }
        format.json { render :show, status: :created, location: @gprice }
      else
        format.html { render :new }
        format.json { render json: @gprice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gprices/1
  # PATCH/PUT /gprices/1.json
  def update
    respond_to do |format|
      if @gprice.update(gprice_params)
        format.html { redirect_to @gprice, notice: 'Gprice was successfully updated.' }
        format.json { render :show, status: :ok, location: @gprice }
      else
        format.html { render :edit }
        format.json { render json: @gprice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gprices/1
  # DELETE /gprices/1.json
  def destroy
    @gprice.destroy
    respond_to do |format|
      format.html { redirect_to gprices_url, notice: 'Gprice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gprice
      @gprice = Gprice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gprice_params
      params.require(:gprice).permit(:platform, :title, :release, :price, :tradeValue, :rating)
    end
end
