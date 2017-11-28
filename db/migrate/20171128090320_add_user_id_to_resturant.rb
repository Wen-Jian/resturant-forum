class AddUserIdToResturant < ActiveRecord::Migration[5.1]
  def change
    add_column :resturants, :user_id, :integer
    add_index :resturants, :user_id
  end
end
