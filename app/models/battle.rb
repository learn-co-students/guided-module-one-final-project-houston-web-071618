# - All interactions between heroes and villains will take place on Battle class.
# - Battle class has methods that govern the fighting and results of the fights
# - battle class will have records of the results of all fights

class Battle < ActiveRecord::Base
  belongs_to :hero
  belongs_to :villain

  my_hero = def add_hero_to_battle(hero)
    Hero.find_by(name: hero)
  end

  my_villain = def add_villain_to_battle(villain)
    Villain.find_by(name: villain)
  end

  fight_result = def fight(my_hero, my_villain)
    my_hero.power_level > my_villain.power_level
  end

  binding.pry

  # def save_fights(hero, villain, fight_result)
  #   Battle.create(did_hero_win: fight_result, villain_id: villain, hero_id: hero)
  # end

  def result_of_fight_message
    #if hero wins
    if fight_result
      print "Yoda: #{my_hero}, you won! Now, go forth and fight again if you have the courage. You might not be as lucky next time."
    else
      print "Yoda: #{my_hero}, you are dead meat... So sorry. Try again on your next life?"
    end
  end
end
