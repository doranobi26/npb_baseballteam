class CreateImpressions < ActiveRecord::Migration[5.2]
  def change
    create_table :impressions do |t|
      t.integer :user_id
      t.integer :alcohol_id
      t.text :impression
      t.float :evaluation

      t.timestamps
    end
  end
end
