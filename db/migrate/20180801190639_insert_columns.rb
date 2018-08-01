class InsertColumns < ActiveRecord::Migration[5.0]
  def change
  	add_column :tweet_topics, :retweet_count, :integer
  	add_column :tweet_topics, :favorite_count, :integer
  end
end
