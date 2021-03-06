require 'rails_helper'

RSpec.feature "Company signs up", type: :feature do

  scenario "with good information" do
    starting_length = Company.all.length

    visit 'companies/new'

    fill_in 'Name', with: "AeroCompany"
    fill_in 'Email', with: "aero@company.com"
    fill_in 'Password', with: "password"
    fill_in 'Password confirmation', with: "password"

    click_button 'Sign up'
    after_length = Company.all.length
    expect(after_length).to be > starting_length 
  end

  scenario "with missing fields" do
    starting_length = Company.all.length

    visit 'companies/new'

    fill_in 'Name', with: "PlaneThing MoneyMaker"
    fill_in 'Email', with: "we@make.money"

    click_button 'Sign up'
    after_length = Company.all.length
    expect(after_length).to eq(starting_length) 
    expect(page.current_path).to eq new_company_path 
  end
end
