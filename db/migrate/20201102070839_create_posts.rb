class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :caption
      t.integer :user_id
      t.string :player
      t.integer :type_id
      t.integer :role_id
      t.integer :affiliation_id

      t.timestamps
    end
  end
end
