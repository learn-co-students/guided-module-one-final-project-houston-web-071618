class CommandLineInterface 

	def initialize
		@greet = greet
	end

	def greet
		puts "**********************************************************"
		puts "Welcome to Trending with Trump!"
		puts "You can search all of President Trump's July 2018 Tweets."
		puts "Select a number to continue:"
		gets_user_input
	end

	def gets_user_input
		puts "1) Find the most retweeted tweet"
		puts "2) Find the most favorited tweet"
		puts "3) Return 5 most trending topics"
		puts "4) Return all tweets for a selected topic"
		user_input = gets.chomp.to_i
		if user_input == 1
			most_retweeted
		elsif user_input == 2
			most_favorited
		elsif user_input == 3
			most_trending
		elsif user_input == 4
			return_topic
		else
			puts "Error! Please make your selection from the list."
		end		
	end

	def most_retweeted
		x = TrumpTweet.maximum("retweet_count")
		x = TrumpTweet.find_by(retweet_count: x)
		puts "Tweet: #{x.content} "
		puts "Date & Time: #{x.post_time}"
		puts "Retweet Count: #{x.retweet_count}"
		greet
	end

	def most_favorited
		x = TrumpTweet.maximum("favorite_count")
		x = TrumpTweet.find_by(favorite_count: x)
		puts "Tweet: #{x.content} "
		puts "Date & Time: #{x.post_time}"
		puts "Favorite Count: #{x.favorite_count}"
		greet
	end

	def most_trending
		p TrumpTweet.group(:category_name).order('count_id DESC').limit(5).count(:id)
		greet
	end

	def display_message(message)
		puts
		puts message
	end

	def cleanup(input)
		input.each do |x|
			display_message(x.content)
			puts x.post_time
		end
	end

	def return_topic
		puts "Select a topic by number to see the Tweets related to it."
		puts "1) Election 🗳"
		puts "2) Travel ✈️"
		puts "3) Economy 💵"
		puts "4) Border Security/Immi gration 🗽"
		puts "5) Collusion/Investigation 🔍"
		puts "6) Foreign Relations 🌎"
		puts "7) Current Events 📰"
		puts "8) News/Media Coverage 📺"
		puts "9) Trump Administration 📝"
		puts "10) Random Words of Kindness 😍"
		puts "11) 🇺🇸  Make 🇺🇸  America 🇺🇸  Great 🇺🇸  Again 🇺🇸"
		puts "12) Guns 🔫"
		user_input = gets.chomp.to_i
			if user_input == 1
				cleanup(TrumpTweet.where(category_name: "election"))
			elsif user_input == 2
				cleanup(TrumpTweet.where(category_name: "travel"))
			elsif user_input == 3
				cleanup(TrumpTweet.where(category_name: "economy"))
			elsif user_input == 4
				cleanup(TrumpTweet.where(category_name: "border_security"))
			elsif user_input == 5
				cleanup(TrumpTweet.where(category_name: "collusion "))
			elsif user_input == 6
				cleanup(TrumpTweet.where(category_name: "foreign_relations "))
			elsif user_input == 7
				cleanup(TrumpTweet.where(category_name: "current_events"))
			elsif user_input == 8
				cleanup(TrumpTweet.where(category_name: "news"))
			elsif user_input == 9
				cleanup(TrumpTweet.where(category_name: "trump_admin "))
			elsif user_input == 10
				cleanup(TrumpTweet.where(category_name: "random_kindness"))
			elsif user_input == 11
				cleanup(TrumpTweet.where(category_name: "make_america_great_again"))
			elsif user_input == 12
				cleanup(TrumpTweet.where(category_name: "guns"))
			else
				puts "Please select from the available options."
			end
			greet 
	end


end
