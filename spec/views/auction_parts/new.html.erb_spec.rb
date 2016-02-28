require 'rails_helper'

RSpec.describe "auction_parts/new", type: :view do
  before(:each) do
    assign(:auction_part, AuctionPart.new())
  end

  it "renders new auction_part form" do
    render

    assert_select "form[action=?][method=?]", auction_parts_path, "post" do
    end
  end
end
