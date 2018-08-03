class Topic < ActiveRecord::Base

	has_many :tweet_topics
	has_many :trump_tweets, through: :tweet_topics


end