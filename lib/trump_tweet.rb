class TrumpTweet < ActiveRecord::Base

	has_many :tweet_topics
	has_many :topics, through: :tweet_topics

end