
#introduction/greeting methods

class CLI
  def heros_list
    Hero.all.map do |hero|
      "#{hero.name}"
    end
  end

  def villains_list
    Villain.all.map do |villain|
      "#{villain.name}"
    end
  end

  def invalid_command
    puts "Your choice is not avaialable.\nPlease type name from list"
  end

  def opening_greeting
    puts "Greetings young padawan! Yoda welcomes you to battle your foes!\nWith you may the force be. Please select your hero by typing in the name:"
  end

  def select_your_hero
    puts heros_list
  end

  def user_hero
    gets.chomp
  end

  def hero_check(selected_hero)
    if !heros_list.include?(selected_hero)
      invalid_command
      select_your_hero
    else
      puts "You have selected #{selected_hero}."
    end
  end

  # def select_hero
  #   selected_hero = gets.chomp
  #   # 1-5. What hero?
  #   my_hero = New_hero.new()
  #   my_hero.which_hero(selected_hero)
  #   my_hero.create_new_hero
  # end

  def select_a_villain
    puts "Padawan, you have selected your hero.\nWho is your hero going to fight?\nSelect your villain:"
    puts villains_list
  end

  def user_villain
    gets.chomp
  end

  def check_villain(selected_villain)
    if !villains_list.include?(selected_villain)
      invalid_command
      select_a_villain
    else
      puts "You have selected #{selected_villain}."
    end
  end
end

# def start_battle
#   first_battle = Battle.new(selected_hero, selected_villain)

#   first_battle.result_of_fight
# end

# def start_battle_intro
#   # "Battle between #{villain} using #{villain.weapon} and #{hero} begins."
# end

# def runner
#     greetting
#     players_villain
#     start_battle_intro
# end

# binding.pry
