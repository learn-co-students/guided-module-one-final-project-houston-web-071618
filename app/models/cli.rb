
#introduction/greeting methods
def heros_list
  count = 0
  Hero.all.map do |hero|
    "#{count += 1}. #{hero.name}"
  end
end

def weapons_list
  count = 0
  Weapon.all.map do |weapon|
    "#{count += 1}. #{weapon.name}"
  end
end

def villains_list
  count = 0
  Villain.all.map do |villain|
    "#{count += 1}. #{villain.name}"
  end
end

def greeting
  #in yoda speak
  # "May the Force be with you. Please select your hero to start."
  puts "Greetings young padawan! Yoda welcomes you to battle your foes!\nWith you may the force be.\nTo start, select your hero:\n"
  puts heros_list
end

def select_hero
  #   gets.chomp
end

def select_a_weapon
  selected_hero = "Luke Skywalker"
  puts "You selected #{selected_hero}. Please select a weapon."
  puts weapons_list
end

def select_weapon_choice
  #gets.chomp
end

def select_villain
  # "You have selected #{weapon} for #{hero}. Now select your opponent"
end

def players_villain
  #gets.chomp
end

def start_battle_intro
  # "Battle between #{villain} using #{villain.weapon} and #{hero} begins."
end

# def runner
#     greetting
#     players_villain
#     start_battle_intro
# end
