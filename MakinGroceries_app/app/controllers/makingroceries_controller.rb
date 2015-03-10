class MakingroceriesController < ApplicationController
  before_action :set_makingrocery, only: [:show, :edit, :update, :destroy]

  # GET /makingroceries
  # GET /makingroceries.json
  def index
    @makingroceries = Makingrocery.all
  end

  # GET /makingroceries/1
  # GET /makingroceries/1.json
  def show
  end

  # GET /makingroceries/new
  def new
    @makingrocery = Makingrocery.new
  end

  # GET /makingroceries/1/edit
  def edit
  end

  # POST /makingroceries
  # POST /makingroceries.json
  def create
    @makingrocery = Makingrocery.new(makingrocery_params)

    respond_to do |format|
      if @makingrocery.save
        format.html { redirect_to @makingrocery, notice: 'Makingrocery was successfully created.' }
        format.json { render :show, status: :created, location: @makingrocery }
      else
        format.html { render :new }
        format.json { render json: @makingrocery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /makingroceries/1
  # PATCH/PUT /makingroceries/1.json
  def update
    respond_to do |format|
      if @makingrocery.update(makingrocery_params)
        format.html { redirect_to @makingrocery, notice: 'Makingrocery was successfully updated.' }
        format.json { render :show, status: :ok, location: @makingrocery }
      else
        format.html { render :edit }
        format.json { render json: @makingrocery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /makingroceries/1
  # DELETE /makingroceries/1.json
  def destroy
    @makingrocery.destroy
    respond_to do |format|
      format.html { redirect_to makingroceries_url, notice: 'Makingrocery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_makingrocery
      @makingrocery = Makingrocery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def makingrocery_params
      params.require(:makingrocery).permit(:item, :quantity, :coupon, :done)
    end
end
