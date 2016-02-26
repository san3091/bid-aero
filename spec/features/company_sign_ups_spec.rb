require 'rails_helper'

RSpec.feature "CompanySignUps", type: :feature do
  scenario "New company creates a profile" do
    visit 'companies/new'

    fill_in 'Name', with: "AeroCompany"
    fill_in 'Email', with: "aero@company.com"
    fill_in 'Password', with: "password"
    fill_in 'Password confirmation', with: "password"

    click_button 'Sign up'
  end
end
