class CreateGprices < ActiveRecord::Migration[5.0]
  def change
    create_table :gprices do |t|
      t.string :platform
      t.string :title
      t.date :release
      t.decimal :price
      t.decimal :tradeValue
      t.string :rating

      t.timestamps
    end
  end
end
