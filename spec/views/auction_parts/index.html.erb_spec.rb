require 'rails_helper'

RSpec.describe "auction_parts/index", type: :view do
  before(:each) do
    assign(:auction_parts, [
      AuctionPart.create!(),
      AuctionPart.create!()
    ])
  end

  it "renders a list of auction_parts" do
    render
  end
end
