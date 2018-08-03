class RenameTable < ActiveRecord::Migration[5.0]
  def change
  	rename_table :trumps_tweets, :trump_tweets
  end
end
