class AddCompanyToBid < ActiveRecord::Migration
  def change
    add_reference :bids, :company, index: true, foreign_key: true
  end
end
