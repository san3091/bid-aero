class AuctionsController < ApplicationController
  before_action :set_auction, only: [:show, :edit, :update, :destroy]
  before_action :set_company, only: [:new, :create]

  # GET /auctions
  # GET /auctions.json
  def index
    @auctions = current_user.auctions.all
  end

  # GET /auctions/1
  # GET /auctions/1.json
  def show
  end

  # GET /auctions/new
  def new
    @auction = Auction.new
  end

# Commented out the edit method
  # GET /auctions/1/edit
  # def edit
  # end

  # POST /auctions
  # POST /auctions.json
  def create
    @auction = Auction.new(auction_params)
    @company.auctions << @auction
    respond_to do |format|
      if @auction.save
        p"*"*300
        p params
        p"*"*300
        format.html { redirect_to @auction, notice: 'Auction was successfully created.' }
        format.json { render :show, status: :created, location: @auction }
      else
        format.html { render :new }
        format.json { render json: @auction.errors, status: :unprocessable_entity }
      end
    end
  end

# Commented out update method
  # PATCH/PUT /auctions/1
  # PATCH/PUT /auctions/1.json
  # def update
  #   respond_to do |format|
  #     if @auction.update(auction_params)
  #       format.html { redirect_to @auction, notice: 'Auction was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @auction }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @auction.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /auctions/1
  # DELETE /auctions/1.json
  def destroy
    @auction.destroy
    respond_to do |format|
      format.html { redirect_to auctions_url, notice: 'Auction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction
      @auction = Auction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auction_params
      params.require(:auction).permit(:name, :description, :company_id)
    end

    def set_company
      @company = Company.find(session[:company_id])
    end
end
