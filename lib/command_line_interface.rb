class CommandLineInterface < ActiveRecord::Base

	def initialize
		@greet = greet
	end

	def greet
		puts "Welcome to Trending with Trump! Select a number to continue."
		gets_user_input
	end

	def gets_user_input
		puts "1) Find most retweeted tweets"
		puts "2) Find most favorited tweets"
		puts "3) Return most trending topic"
		puts "4) Return all tweets for a select topic"
		puts "5) Search tweets by word"
		user_input = gets.chomp
			if user_input == 1
				most_retweeted
			elsif user_input == 2
				most_favorited
			elsif user_input == 3
				most_trending
			elsif user_input == 4
				return_topic
			elsif user_input == 5
				search_by_word
			else
				"Error! Please make your selection from the list."
			end		
	end

	def most_retweeted
		TrumpTweet.maximum("retweet_count")
	end

	def most_favorited
		TrumpTweet.maximum("favorite_count")
	end

	def most_trending

	end

	def return_topic

	end

	def search_by_word

	end

end