class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.string :customer
      t.string :product
      t.date :saleDate
      t.decimal :salePrice

      t.timestamps
    end
  end
end
