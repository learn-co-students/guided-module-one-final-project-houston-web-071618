require "csv"


csv_text = CSV.read('/Users/erica/dev/guided-module-one-final-project-houston-web-071618/db/tweet_data.csv')

CSV.foreach('/Users/erica/dev/guided-module-one-final-project-houston-web-071618/db/tweet_data.csv') do |row|
	# #binding.pry
	# topic = Topic.find_by(category_name:row[1])
	# if(topic == nil)
	# 	topic = Topic.create(category_name:row[1], subcategory_name:row[2])
	# end
	TrumpTweet.create(content: row[0],
		category_name: row[1],
		subcategory_name: row[2],
		# topic:topic,	alternate method
		post_time: DateTime.strptime(row[3],"%m-%d-%Y %H:%M:%S"),
		retweet_count: row[4],
		favorite_count: row[5]
	 )
end