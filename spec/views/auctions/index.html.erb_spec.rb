require 'rails_helper'

RSpec.describe "auctions/index", type: :view do
  before(:each) do
    assign(:auctions, [
      Auction.create!(
        :name => "Name",
        :description => "Description"
      ),
      Auction.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of auctions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
