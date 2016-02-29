require 'rails_helper'

RSpec.feature "CreateAuctions", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  scenario "a bid is created within an auction" do
    @auction = Auction.create(name: "Need an engine thing", description: "I need it quick")
    # before(:all) do
    initial_count = @auction.bids.length
    visit new_auction_bid_path(@auction)

    fill_in 'Amount', with: 10000

    click_button 'submit'

    after_count = @auction.bids.length

    expect(after_count).to be > initial_count
  end
end
