class CreateVillian < ActiveRecord::Migration[5.0]
  def change
    create_table :villians do |t|
      t.string :name
      t.string :weapon
      t.integer :power_level

      t.timestamps
    end
  end
end
