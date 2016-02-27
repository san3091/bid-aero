require 'rails_helper'

RSpec.feature "Company logs in", type: :feature do

  scenario "with good credentials" do
    Company.create(name: "AeroCompany", email: "aero@aero.aero", password: "password")

    visit root_path

    fill_in 'Email', with: 'aero@aero.aero'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    
    expect(page.current_path).to eq company_path(11)
    expect(page).to have_content("AeroCompany")
  end

  scenario "with wrong credentials" do
    Company.create(name: "AeroCompany", email: "aero@aero.aero", password: "password")

    visit root_path

    fill_in 'Email', with: 'aero@aero.aero'
    fill_in 'Password', with: 'notThePassword'
    click_button 'Log in'

    expect(page.current_path).to eq root_path
    expect(page).to have_content("Wrong credentials")
  end

end
