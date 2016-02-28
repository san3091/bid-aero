require 'rails_helper'

RSpec.describe "inventory_parts/edit", type: :view do
  before(:each) do
    @inventory_part = assign(:inventory_part, InventoryPart.create!())
  end

  it "renders the edit inventory_part form" do
    render

    assert_select "form[action=?][method=?]", inventory_part_path(@inventory_part), "post" do
    end
  end
end
