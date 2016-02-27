require 'rails_helper'

RSpec.describe Company, type: :model do
  describe "Validations" do
    context "on a new user" do
      it "should not be valid without a password" do
        user = Company.new password: nil, password_confirmation: nil
        expect(user).to_not be_valid
      end

      it "should yell if the password is too short" do
        user = Company.new password: "one", password_confirmation: "one"
        expect(user).to_not be_valid
      end

      it "should not be valid with a confirmation missmatch" do
        user = Company.new password: "different", password_confirmation: "passwords"
        expect(user).to_not be_valid
      end
    end
  end

  describe "creation" do
        it "should assign the company id to the sessions hash" do
      expect()to eq(company.id)
    end
  end
end
