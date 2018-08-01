class AddHerosToWeapons < ActiveRecord::Migration[5.0]
  def change
    add_column :weapons, :hero_id, :integer
  end
end
