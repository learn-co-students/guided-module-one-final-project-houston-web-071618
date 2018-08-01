class CreateAppearence < ActiveRecord::Migration[5.0]
  def change
    create_table :appearences do |t|
      t.belongs_to :movies
      t.belongs_to :actors 
    end
  end
end
