class WashesController < ApplicationController
  before_action :set_wash, only: [:show, :edit, :update, :destroy]

  # GET /washes
  # GET /washes.json
  def index
   
    if params[:cliente]
      @washes = Wash.joins(:customer).order("customers.first_name")
    elsif params[:vehiculo]
      @washes = Wash.joins(:vehicle).order("vehicles.brand")
    elsif params[:empleado]
        @washes = Wash.joins(:employee).order("employees.first_name")
    elsif params[:fecha]
        @washes = Wash.order(:date)
    else
      @washes = Wash.all
    end


    @washes = @washes.where(:customer_id => params[:customer_id]) if params[:customer_id]
  end

  # GET /washes/1
  # GET /washes/1.json
  def show
  end

  # GET /washes/new
  def new
    @wash = Wash.new
  end

  # GET /washes/1/edit
  def edit
  end

  # POST /washes
  # POST /washes.json
  def create
    @wash = Wash.new(wash_params)

    respond_to do |format|
      if @wash.save
        format.html { redirect_to @wash, notice: 'Wash was successfully created.' }
        format.json { render :show, status: :created, location: @wash }
      else
        format.html { render :new }
        format.json { render json: @wash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /washes/1
  # PATCH/PUT /washes/1.json
  def update
    respond_to do |format|
      if @wash.update(wash_params)
        format.html { redirect_to @wash, notice: 'Wash was successfully updated.' }
        format.json { render :show, status: :ok, location: @wash }
      else
        format.html { render :edit }
        format.json { render json: @wash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /washes/1
  # DELETE /washes/1.json
  def destroy
    @wash.destroy
    respond_to do |format|
      format.html { redirect_to washes_url, notice: 'Wash was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wash
      @wash = Wash.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wash_params
      params.require(:wash).permit(:amount, :date, :vehicle_id, :employee_id, :customer_id)
    end
end
