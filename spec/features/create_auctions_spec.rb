require 'rails_helper'

RSpec.feature "CreateAuctions", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  before(:all) do
    @auction = Auction.create(name:"Landing Gear" , description:"Auction for Landing Gear parts" )
  end
end 
