require 'rails_helper'

RSpec.feature "Auction Part", type: :feature do
  scenario "is not created if it doesn't exist in the Parts database" do
    # number of inventory parts before test
    initial_count = AuctionPart.all.length

    visit 'auction_parts/new'

    fill_in 'Part num', with: 'failure'

    click_button 'Submit'

    # number of inventory parts after test
    after_count = AuctionPart.all.length

    expect(after_count).to eq initial_count
    expect(page.current_path).to eq new_part_auction_part
  end

  scenario "is created if the part *does* exist in the Part databse" do
    # number of inventory parts before test
    initial_count = AuctionPart.all.length

    visit 'auction_parts/new'

    fill_in 'Part num', with: '8063-215'

    click_button 'Submit'

    # number of inventory parts after test
    after_count = AuctionPart.all.length

    expect(after_count).to be > initial_count
    expect(page.current_path).to eq new_part_auction_part
  end
end
