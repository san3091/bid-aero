class AuctionPartsController < ApplicationController
  before_action :set_auction_part, only: [:show, :edit, :update, :destroy]
  before_action :require_logged_in

  # GET /auction_parts
  # GET /auction_parts.json
  def index
    @auction_parts = AuctionPart.all
  end

  # GET /auction_parts/1
  # GET /auction_parts/1.json
  def show
  end

  # GET /auction_parts/new
  def new
    @auction_part = AuctionPart.new
  end

  # GET /auction_parts/1/edit
  def edit
  end

  # POST /auction_parts
  # POST /auction_parts.json
  def create
    @auction_part = AuctionPart.new(auction_part_params)
    @part_match = Part.find_by(part_num: @auction_part.part_num)

    respond_to do |format|
      if @part_match
        build_params(@part_match, @auction_part)

        @auction_part.part = @part_match
        @auction_part.save
        format.html { redirect_to @auction_part, notice: 'Auction part was successfully created.' }
        format.json { render :show, status: :created, location: @auction_part }
      else
        format.html { render :new }
        format.json { render json: @auction_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auction_parts/1
  # PATCH/PUT /auction_parts/1.json
  def update
    respond_to do |format|
      if @auction_part.update(auction_part_params)
        format.html { redirect_to @auction_part, notice: 'Auction part was successfully updated.' }
        format.json { render :show, status: :ok, location: @auction_part }
      else
        format.html { render :edit }
        format.json { render json: @auction_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auction_parts/1
  # DELETE /auction_parts/1.json
  def destroy
    @auction_part.destroy
    respond_to do |format|
      format.html { redirect_to auction_parts_url, notice: 'Auction part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction_part
      @auction_part = AuctionPart.find(params[:id])
    end

    def build_params(part_match, auction_part)
        auction_part.description = part_match.description
        auction_part.manufacturer = part_match.manufacturer
        auction_part.mfg_price = part_match.mfg_price
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auction_part_params
      params.require(:auction_part).permit(:part_num, :description, :manufacturer)
    end
end
