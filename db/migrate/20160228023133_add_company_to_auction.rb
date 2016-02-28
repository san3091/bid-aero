class AddCompanyToAuction < ActiveRecord::Migration
  def change
    add_reference :auctions , :company , index: true , foreign_key: true
  end
end
