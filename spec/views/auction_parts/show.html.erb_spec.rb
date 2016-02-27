require 'rails_helper'

RSpec.describe "auction_parts/show", type: :view do
  before(:each) do
    @auction_part = assign(:auction_part, AuctionPart.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
