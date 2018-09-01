class LaptopsController < ApplicationController
  before_action :set_laptop, only: [:show, :edit, :update, :destroy]

  # GET /laptops
  # GET /laptops.json
  def index
    @laptops = Laptop.all
    # render json: @laptops
    #format.html
    #fromat.json
  end

  # GET /laptops/1
  # GET /laptops/1.json
  def show
  end

  # GET /laptops/new
  def new
    @laptop = Laptop.new
  end

  # GET /laptops/1/edit
  def edit
  end

  # POST /laptops
  # POST /laptops.json
  def create
    @laptop = Laptop.new(laptop_params)
    respond_to do |format|
      if @laptop.save
        format.html { redirect_to @laptop, notice: 'Laptop was successfully created.' }
        format.json { render :show, status: :created, location: @laptop }
      else
        format.html { render :new }
        format.json { render json: @laptop.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /laptops/1
  # PATCH/PUT /laptops/1.json
  def update
    respond_to do |format|
      if @laptop.update(laptop_params)
        format.html { redirect_to @laptop, notice: 'Laptop was successfully updated.' }
        format.json { render :show, status: :ok, location: @laptop }
      else
        format.html { render :edit }
        format.json { render json: @laptop.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # DELETE /laptops/1
  # DELETE /laptops/1.json
  def destroy
    @laptop.destroy
    respond_to do |format|
      format.html { redirect_to laptops_url, notice: 'Laptop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

   def update_second_record
    @laptop = Laptop.find(params[:id])
      @laptop.update(laptop_params)
      render json: { success: true }, status: 201
     end

    def first_30_records
    @laptop = Laptop.where(id: 0..10)
      render json: @laptops
    end
    
  private
    # Use callbacks to share common setup or constraints between actions.
  def set_laptop
      @laptop = Laptop.find(params[:id])
  end

 # Never trust parameters from the scary internet, only allow the white list through.
    def laptop_params
      params.require(:laptop).permit(:model, :ram, :processor)
    end 
end
