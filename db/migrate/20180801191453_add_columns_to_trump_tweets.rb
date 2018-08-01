class AddColumnsToTrumpTweets < ActiveRecord::Migration[5.0]
  def change
  	add_column :trump_tweets, :retweet_count, :integer
  	add_column :trump_tweets, :favorite_count, :integer
  end
end
