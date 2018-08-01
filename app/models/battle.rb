class Battle < ActiveRecord::Base
  has_many :heros
  has_many :villains
end

def name(name)
end
