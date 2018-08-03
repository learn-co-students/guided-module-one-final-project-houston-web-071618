class CreateTopics < ActiveRecord::Migration[5.0]
  def change
  	  	create_table :topics do |t| 
  		t.string :category_name
  		t.string :subcategory_name
  	end
  end
end
