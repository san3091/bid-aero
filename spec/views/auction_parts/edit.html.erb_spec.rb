require 'rails_helper'

RSpec.describe "auction_parts/edit", type: :view do
  before(:each) do
    @auction_part = assign(:auction_part, AuctionPart.create!())
  end

  it "renders the edit auction_part form" do
    render

    assert_select "form[action=?][method=?]", auction_part_path(@auction_part), "post" do
    end
  end
end
