class InventoryPartsController < ApplicationController
  before_action :set_inventory_part, only: [:show, :edit, :update, :destroy]


  # GET /inventory_parts
  # GET /inventory_parts.json
  def index
    @inventory_parts = InventoryPart.all
  end

  # GET /inventory_parts/1
  # GET /inventory_parts/1.json
  def show
  end

  # GET /inventory_parts/new
  def new
    @inventory_part = InventoryPart.new
  end

  # GET /inventory_parts/1/edit
  def edit
  end

  # POST /inventory_parts
  # POST /inventory_parts.json
  def create
    @inventory_part = InventoryPart.new(inventory_part_params)

    respond_to do |format|
      # if @part.include? Part.where(part_num: @inverntory_part.part_num).first
      # if @part.where(part_num: @inventory_part.part_num)
      if Part.where(part_num: @inventory_part.part_num).empty?
        format.html { redirect_to new_inventory_part_path }
        format.json { render json: @inventory_part.errors, status: :unprocessable_entity }
      else
        @inventory_part.save
        format.html { redirect_to @inventory_part, notice: 'Inventory part was successfully created.' }
        format.json { render :show, status: :created, location: @inventory_part }
      end
    end
  end

  # PATCH/PUT /inventory_parts/1
  # PATCH/PUT /inventory_parts/1.json
  def update
    respond_to do |format|
      if @inventory_part.update(inventory_part_params)
        format.html { redirect_to @inventory_part, notice: 'Inventory part was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventory_part }
      else
        format.html { render :edit }
        format.json { render json: @inventory_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_parts/1
  # DELETE /inventory_parts/1.json
  def destroy
    @inventory_part.destroy
    respond_to do |format|
      format.html { redirect_to inventory_parts_url, notice: 'Inventory part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_part
      @inventory_part = InventoryPart.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_part_params
      params.require(:inventory_part).permit(:description, :part_num, :serial_num, :qty, :manufacturer)
    end
end
