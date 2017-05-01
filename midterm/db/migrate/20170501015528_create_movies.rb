class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.integer :rank
      t.string :name
      t.date :releaseDate
      t.string :distributor
      t.string :genre
      t.string :mpaa
      t.integer :grossEarning
      t.integer :ticketsSold

      t.timestamps
    end
  end
end
