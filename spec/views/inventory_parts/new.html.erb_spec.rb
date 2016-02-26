require 'rails_helper'

RSpec.describe "inventory_parts/new", type: :view do
  before(:each) do
    assign(:inventory_part, InventoryPart.new())
  end

  it "renders new inventory_part form" do
    render

    assert_select "form[action=?][method=?]", inventory_parts_path, "post" do
    end
  end
end
