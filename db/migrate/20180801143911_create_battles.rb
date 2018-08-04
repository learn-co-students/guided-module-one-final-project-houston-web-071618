class CreateBattles < ActiveRecord::Migration[5.0]
  def change
    create_table :battles do |t|
      t.boolean :did_hero_win
      t.integer :hero_id
      t.integer :villain_id
      t.string :name

      t.timestamps
    end
  end
end
