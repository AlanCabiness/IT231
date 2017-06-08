class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.string :series
      t.decimal :viewership
      t.decimal :rating
      t.integer :share
      t.date :date
      t.string :network

      t.timestamps
    end
  end
end
