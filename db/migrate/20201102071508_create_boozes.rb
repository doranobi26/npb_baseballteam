class CreateBoozes < ActiveRecord::Migration[5.2]
  def change
    create_table :boozes do |t|
      t.string :which

      t.timestamps
    end
  end
end
