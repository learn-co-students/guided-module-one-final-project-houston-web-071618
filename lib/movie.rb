class Movie < ActiveRecord::Base 
    has_many :actors, through: :appearance 
    has_many :appearances
end 