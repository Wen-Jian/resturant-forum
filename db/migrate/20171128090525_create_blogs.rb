class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :description
      t.string :photos
      t.integer :user_id
      t.integer :resturant_id

      t.timestamps
    end
    add_index :blogs, :user_id
    add_index :blogs, :resturant_id
  end
end
