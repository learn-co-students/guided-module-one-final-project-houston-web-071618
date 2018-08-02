require_relative "../config/environment"
require "pry"

# require_all "config"
# require_all "app/models"

start_CLI = CLI.new()

start_CLI.opening_greeting
start_CLI.select_your_hero
selected_hero = start_CLI.user_hero
start_CLI.hero_check(selected_hero)
sleep(1.seconds)
start_CLI.select_a_weapon
selected_weapon = start_CLI.user_weapon
start_CLI.weapon_check(selected_weapon)
sleep(1.seconds)
start_CLI.select_a_villain
selected_villain = start_CLI.user_villain
start_CLI.check_villain(selected_villain)
sleep(1.second)
# start_CLI.start_battle

# first_fight = Battle.new(Hero.find_by(name: "Luke Skywalker"), Vallian.find_by(name: "Darth Vader"))

# binding.pry
#greeding
