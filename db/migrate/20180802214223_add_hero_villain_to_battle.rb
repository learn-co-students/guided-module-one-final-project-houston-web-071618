class AddHeroVillainToBattle < ActiveRecord::Migration[5.0]
  def change
    add_column :battles, :hero_id, :integer
    add_column :battles, :villain_id, :integer
  end
end
