class CreateBirthplaces < ActiveRecord::Migration[5.2]
  def change
    create_table :birthplaces do |t|
      t.string :cuntry

      t.timestamps
    end
  end
end
