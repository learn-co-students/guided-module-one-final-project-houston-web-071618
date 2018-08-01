class RemoveColumnFromTweetTopics < ActiveRecord::Migration[5.0]
  def change
  	remove_column :tweet_topics, :retweet_count
  	remove_column :tweet_topics, :favorite_count
  end
end
