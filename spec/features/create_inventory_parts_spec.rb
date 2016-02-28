require 'rails_helper'

RSpec.feature "Inventory Part", type: :feature do
  scenario "is not created if it doesn't exist in the Parts database" do
    # number of inventory parts before test
    initial_count = InventoryPart.all.length

    visit 'inventory_parts/new'

    fill_in 'Description', with: 'blah'
    fill_in 'Part num', with: 'blah'
    fill_in 'Serial num', with: 'blah'
    fill_in 'Qty', with: 3
    fill_in 'Manufacturer', with: 'blah'

    click_button 'Submit'

    # number of inventory parts after test
    after_count = InventoryPart.all.length

    expect(after_count).to eq initial_count
    expect(page.current_path).to eq '/inventory_parts/new'
  end

  scenario "is created if the part *does* exist in the PArt databse" do
    # number of inventory parts before test
    initial_count = InventoryPart.all.length

    visit 'inventory_parts/new'

    fill_in 'Description', with: 'blah'
    fill_in 'Part num', with: '8063-215'
    fill_in 'Serial num', with: 'blah'
    fill_in 'Qty', with: 3
    fill_in 'Manufacturer', with: 'blah'

    click_button 'Submit'

    # number of inventory parts after test
    after_count = InventoryPart.all.length

    expect(after_count).to be > initial_count
    expect(page.current_path).to eq '/inventory_parts/new'
  end
end
