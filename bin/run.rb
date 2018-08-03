require_relative "../config/environment"
require "pry"

# require_all "config"
# require_all "app/models"

start_CLI = CLI.new()

start_CLI.opening_greeting
puts "++++++++++++++++++++++++++++++++++++++++++++"
start_CLI.select_your_hero
puts "++++++++++++++++++++++++++++++++++++++++++++"
selected_hero = start_CLI.user_hero
start_CLI.hero_check(selected_hero)
sleep(1.seconds)
puts "++++++++++++++++++++++++++++++++++++++++++++"

sleep(1.seconds)
start_CLI.select_a_villain
puts "++++++++++++++++++++++++++++++++++++++++++++"
selected_villain = start_CLI.user_villain
start_CLI.check_villain(selected_villain)
sleep(1.second)
start_fight = Battle.new()
hero = start_fight.add_hero_to_battle(selected_hero)
villain = start_fight.add_villain_to_battle(selected_villain)
fight_result = start_fight.fight(hero, villain)
start_fight.result_of_fight_message(fight_result, selected_hero)

# first_fight = Battle.new(Hero.find_by(name: "Luke Skywalker"), Vallian.find_by(name: "Darth Vader"))

# binding.pry
#greeding
