class AddColumnToMessage < ActiveRecord::Migration[5.1]
  def change

  	add_column :messages, :chatroom_id, :integer
  	add_index :messages, :chatroom_id


  end
end
