require 'rails_helper'

RSpec.feature "Company logs in", type: :feature do
  before(:all) do
    @company = Company.create(name: "AeroCompany", email: "aero@aero.aero", password: "password2")
  end

  before(:each) do
    visit '/'
  end

  scenario "with good credentials" do
    fill_in 'Email', with: 'aero@aero.aero'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    
    expect(page.current_path).to eq company_path(11)
    expect(page).to have_content("AeroCompany")
  end

  scenario "with existing email, and wrong password" do
    fill_in 'Email', with: 'aero@aero.aero'
    fill_in 'Password', with: 'notThePassword'
    click_button 'Log in'
    expect(page.current_path).to eq root_path
    expect(page).to have_content("Wrong Password")
  end

  scenario "with a non-existant email" do
    fill_in 'Email', with: 'doesnt@exist.nope'
    fill_in 'Password', with: 'password'
    click_button 'Log in'

    expect(page).to have_content("Email not in our database")
  end
end
