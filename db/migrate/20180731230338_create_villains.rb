class CreateVillains < ActiveRecord::Migration[5.0]
  def change
    create_table :villains do |t|
      t.string :name
      t.integer :power_level

      t.timestamps
    end
  end
end
