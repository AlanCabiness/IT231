class CreateSports < ActiveRecord::Migration[5.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.string :location
      t.string :stadium
      t.string :league

      t.timestamps
    end
  end
end
