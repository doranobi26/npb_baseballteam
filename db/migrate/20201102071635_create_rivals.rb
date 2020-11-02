class CreateRivals < ActiveRecord::Migration[5.2]
  def change
    create_table :rivals do |t|
      t.string :name

      t.timestamps
    end
  end
end
