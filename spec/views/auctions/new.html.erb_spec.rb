require 'rails_helper'

RSpec.describe "auctions/new", type: :view do
  before(:each) do
    assign(:auction, Auction.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new auction form" do
    render

    assert_select "form[action=?][method=?]", auctions_path, "post" do

      assert_select "input#auction_name[name=?]", "auction[name]"

      assert_select "input#auction_description[name=?]", "auction[description]"
    end
  end
end
