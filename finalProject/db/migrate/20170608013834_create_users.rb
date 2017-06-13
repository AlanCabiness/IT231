class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.decimal :balance
      t.string :steamID

      t.timestamps
    end
  end
end
