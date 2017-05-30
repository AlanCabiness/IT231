class CreatePromotions < ActiveRecord::Migration[5.0]
  def change
    create_table :promotions do |t|
      t.string :title
      t.string :description
      t.string :imagePath
      t.date :startDate
      t.date :endDate

      t.timestamps
    end
  end
end
