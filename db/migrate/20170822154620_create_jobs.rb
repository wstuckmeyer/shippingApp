class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :description
      t.string :origin
      t.string :destination
      t.decimal :cost
      t.integer :containersNeeded
      t.string :name

      t.timestamps
    end
  end
end
