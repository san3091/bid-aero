require 'rails_helper'

RSpec.describe "bids/new", type: :view do
  before(:each) do
    assign(:bid, Bid.new(
      :auction => nil,
      :amount => "9.99"
    ))
  end

  it "renders new bid form" do
    render

    assert_select "form[action=?][method=?]", bids_path, "post" do

      assert_select "input#bid_auction_id[name=?]", "bid[auction_id]"

      assert_select "input#bid_amount[name=?]", "bid[amount]"
    end
  end
end
