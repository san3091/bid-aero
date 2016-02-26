require 'rails_helper'

RSpec.describe "auctions/show", type: :view do
  before(:each) do
    @auction = assign(:auction, Auction.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
