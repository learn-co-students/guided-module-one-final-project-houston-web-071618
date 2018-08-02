# - All interactions between heroes and villains will take place on Battle class.
# - Battle class has methods that govern the fighting and results of the fights
# - battle class will have records of the results of all fights

class Battle < ActiveRecord::Base
  has_many :heros
  has_many :villains
  attr_accessor :hero, :villain

  def initalize(hero, villain)
    @hero = hero
    @villain = villain
  end

  def fight

    #return a boolean as result of the fight
    hero.weapons.power_level > villain.power_level
  end

  def save_fights(hero_id, villain_id)
    Battle.create(hero_win?: fight, hero_id: hero_id, villain_id: villain_id)
  end

  def result_of_fight
    #if hero wins
    if fight
      print "Yoda: #{hero.name}, you won! Now, go forth and fight again if you have the courage. You might not be as lucky next time."
    else
      print "Yoda: #{hero.name}, you are dead meat... So sorry. Try again on your next life?"
    end
  end
end
