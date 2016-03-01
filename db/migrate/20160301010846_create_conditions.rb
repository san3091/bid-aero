class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :description
      t.string :two_letter

      t.timestamps null: false
    end
  end
end
