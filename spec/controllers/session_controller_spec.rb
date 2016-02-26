require 'rails_helper'

RSpec.describe SessionController, type: :controller do
  let(:valid_attributes) {
    name: "Aero"
    email: "example@aero.com"
    password: "eoc9shwd1hwq4vbgfw"
  }

  describe "POST #create" do
    context "with successful user login" do
      it "assigns the session company id to object id" do
        company = Company.create! valid_attributes
      end
    end

    context "with null password" do
      it {should redirect_to root_path }
    end

  end

  describe "GET #new" do

    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

  end

end
