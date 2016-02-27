require 'rails_helper'

RSpec.describe Company, type: :request do
  context "with good credentials" do
    # root_path is the login form
    # company enters correct credentials
    # company is redirected to user show (temporary)
  end

  context "with bad credentials" do
    # root_path is the login form
    # redirects to login with no name
    # redirects to login with no email
    # redirects to login with no password
    # redirects to login with wrong password
  end
end
