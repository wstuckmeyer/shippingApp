class CreateShips < ActiveRecord::Migration[5.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :containers
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
