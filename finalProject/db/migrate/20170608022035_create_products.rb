class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :game
      t.string :itemName
      t.decimal :price
      t.decimal :tradeValue
      t.string :imagePath

      t.timestamps
    end
  end
end
