class CreateIPrices < ActiveRecord::Migration[5.0]
  def change
    create_table :i_prices do |t|
      t.string :game
      t.string :itemName
      t.integer :itemId
      t.decimal :price
      t.decimal :tradeValue
      t.string :rating

      t.timestamps
    end
  end
end
