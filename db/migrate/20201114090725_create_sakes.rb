class CreateSakes < ActiveRecord::Migration[5.2]
  def change
    create_table :sakes do |t|

      t.string :genre

      t.timestamps
    end
  end
end
