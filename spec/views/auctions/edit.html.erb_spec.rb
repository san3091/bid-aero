require 'rails_helper'

RSpec.describe "auctions/edit", type: :view do
  before(:each) do
    @auction = assign(:auction, Auction.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit auction form" do
    render

    assert_select "form[action=?][method=?]", auction_path(@auction), "post" do

      assert_select "input#auction_name[name=?]", "auction[name]"

      assert_select "input#auction_description[name=?]", "auction[description]"
    end
  end
end
