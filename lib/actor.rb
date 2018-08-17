 class Actor < ActiveRecord::Base

    has_many :movies, through: :appearences
    has_many :appearences
end 

