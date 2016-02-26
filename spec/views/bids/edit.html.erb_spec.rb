require 'rails_helper'

RSpec.describe "bids/edit", type: :view do
  before(:each) do
    @bid = assign(:bid, Bid.create!(
      :auction => nil,
      :amount => "9.99"
    ))
  end

  it "renders the edit bid form" do
    render

    assert_select "form[action=?][method=?]", bid_path(@bid), "post" do

      assert_select "input#bid_auction_id[name=?]", "bid[auction_id]"

      assert_select "input#bid_amount[name=?]", "bid[amount]"
    end
  end
end
