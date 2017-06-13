class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.decimal :user
      t.decimal :amount
      t.date :date

      t.timestamps
    end
  end
end
