class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :name, null: false
      t.string :description

      t.timestamps null: false
    end
  end
end
