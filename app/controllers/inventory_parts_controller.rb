class InventoryPartsController < ApplicationController
  before_action :set_inventory_part, only: [:show, :edit, :update, :destroy]
  before_action :require_logged_in

  # GET /inventory_parts
  # GET /inventory_parts.json
  def index
    @inventory_parts = current_user.inventory_parts.all
    @company = current_user
    p "*"*300
    p current_user.inventory_parts
    p "*"*300
  end

  # GET /inventory_parts/1
  # GET /inventory_parts/1.json
  def show
  end

  # GET /inventory_parts/new
  def new
    @inventory_part = InventoryPart.new
    @company = current_user
  end

  # GET /inventory_parts/1/edit
  def edit
  end

  # POST /inventory_parts
  # POST /inventory_parts.json
  def create
    @inventory_part = InventoryPart.new(inventory_part_params)
    @part_match = Part.find_by(part_num: @inventory_part.part_num)
    @company = current_user

    p "*"*300
    p @company
    p "*"*300
    respond_to do |format|
      if @part_match
        # p "*"*300
        # p @inventory_part
        # p "*"*300
        # # populating field from Part model
        build_params(@part_match, @inventory_part)
        #
        # p "*"*300
        # p @inventory_part
        # p "*"*300
        # adding foreign keys
        @inventory_part.company = @company
        @inventory_part.part = @part_match
        #
        # p "*"*300
        # p @inventory_part
        # p "*"*300
        @inventory_part.save
        format.html { redirect_to company_inventory_parts_path, notice: 'Inventory part was successfully created.' }
        format.json { render :show, status: :created, location: @inventory_part }
      else
        format.html { redirect_to new_company_inventory_part_path }
        format.json { render json: @inventory_part.errors, status: :unprocessable_entity }
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
      format.html { redirect_to company_inventory_parts_url, notice: 'Inventory part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_part
      @inventory_part = InventoryPart.find(params[:id])
    end

    def build_params(part_match, inventory_part)
        inventory_part.description = part_match.description
        inventory_part.manufacturer = part_match.manufacturer
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_part_params
      params.require(:inventory_part).permit(:description, :part_num, :serial_num, :manufacturer, :company_id)
    end
end
