class AddAvatarToShips < ActiveRecord::Migration[5.1]
  def change
    add_column :ships, :avatar, :string
  end
end
