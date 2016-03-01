class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :destroy]
  before_action :set_auction, only: [:new, :create]


    # GET /bids
    # GET /bids.json
  def index
      @bids = current_user.bids.all
  end

    # GET /bids/1
    # GET /bids/1.json
  def show
  end

  # GET /bids/new
  def new
    @bid = Bid.new
    # @company = current_user
  end

  # Commented out edit method
  # GET /bids/1/edit
  def edit
  end

  # POST /bids
  # POST /bids.json
  def create
    # @bid = Bid.new(bid_params)
    # @bid = Bid.new(bid_params)
    @bid = @auction.bids.new(bid_params)
    # current_user.bids << @bid
    respond_to do |format|
      if @bid.save
        format.html { redirect_to @auction, notice: 'Bid was successfully created.' }
        format.json { render :show, status: :created, location: @bid }
      else
        format.html { render :new }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /bids/1
  # PATCH/PUT /bids/1.json
  def update
    respond_to do |format|
      if @bid.update(bid_params)
        format.html { redirect_to @bid, notice: 'Bid was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid }
      else
        format.html { render :edit }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  #

  # DELETE /bids/1
  # DELETE /bids/1.json
  def destroy
    @bid.destroy
    respond_to do |format|
      format.html { redirect_to auction_bids_url, notice: 'Bid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_params
      params.require(:bid).permit(:auction_id, :amount, :company_id)
    end

    def set_auction
      @auction = Auction.find(params[:auction_id])
    end
end
