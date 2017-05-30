class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :pName
      t.decimal :price
      t.string :category

      t.timestamps
    end
  end
end
