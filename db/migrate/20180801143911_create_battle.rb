class CreateBattle < ActiveRecord::Migration[5.0]

  def change
    create_table :battles do |t|
      t.boolean :hero_win?

      t.timestamps
    end
  end
end
