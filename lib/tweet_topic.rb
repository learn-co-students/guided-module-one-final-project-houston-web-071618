class TweetTopic < ActiveRecord::Base

	belongs_to :trump_tweet
	belongs_to :topic 

end