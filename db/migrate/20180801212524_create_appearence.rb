class CreateAppearence < ActiveRecord::Migration[5.0]
  def change
    create_table :appearences do |t|
      t.belongs_to :movie
      t.belongs_to :actor 
    end
  end
end
