class CreateAlcohols < ActiveRecord::Migration[5.2]
  def change
    create_table :alcohols do |t|

      t.string :title
      t.text :caption
      t.integer :user_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
