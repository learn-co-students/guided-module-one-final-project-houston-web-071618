 class Actor < ActiveRecord::Base

    has_many :movies, through: :appearences
    has_many :appearences
end 

#models/class, singular 
#model file name, singular
#tables for models, plural
# when it has_many use plural 
# through: is also plural
# when it belongs_to, use singular 
# schema is where you can find your current tables
# in Appearance.create column names must match schema, for 
#    example movie_id: (here your value can either pass in an instance of movie, or just a movie id) 
