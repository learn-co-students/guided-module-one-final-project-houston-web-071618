class CreateTrumpTweets < ActiveRecord::Migration[5.0]
  def change
  	  	create_table :trumps_tweets do |t| 
  		t.text :content
  		t.string :category_name
  		t.string :subcategory_name
  		t.datetime :post_time
	end
  end
end
