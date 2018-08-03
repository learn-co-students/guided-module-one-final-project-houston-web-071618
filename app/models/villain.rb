class Villain < ActiveRecord::Base
  has_many :battles
  has_many :heros, through: :battles
end
