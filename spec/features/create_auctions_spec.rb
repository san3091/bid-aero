require 'rails_helper'

RSpec.feature "CreateAuctions", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  scenario "a bid is created within an auction" do
  # before(:all) do
  bid = Bid.all
  initial_count = Auction.bid.length
  visit new_auction_bid_path

  fill_in 'Amount', with: 10000

  click_button 'submit'

  after_count = Auction.bid.length

  expect(after_count).to eq initial_count
  end
end
