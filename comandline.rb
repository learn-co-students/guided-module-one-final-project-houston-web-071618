require 'pry'
class CommandLineInterface
  def initialize 
  #   actors_question
   @welcome = welcome
  end 

  def welcome
   puts "  ──────────────────▄▄───▄▄▄▄▄▄▀▀▀▄──▄         kkkkk-------kkkkkkk"
   puts " ────────────────▄▀──▀▀█▄▄──▄────█▄█▄▀▀▄▄▄▄    kkkkk------kkkkk---"
   puts "─────────────────▀█▀────▀▀▀▀█▄▄▄▄───▄▄────▀▀▀▀ kkkkk-----kkkk-----"
   puts "  ─────────────▄▀▀▀▀▀──▀█▄▄▄▄▄─▀▀▀▀▀█▄███▀     kkkkkkkkkkkkkkk----"
   puts "──────────────▀█▄▄▄──▀▀─▄▄▄▄──────────▀▀▀▀█▀▀▀ kkkkk-------kkkkk--"
   puts "─-──────▄▀▀▀▄▄▀▀████▀█▄▄▄▄▄▄▄▄▄▄▄───▄▄▄▄──▄█░▄█ kkkkkz--------kkkkk"
   puts "────────▀▄▄▄▀▀██▀▀▀▄█─███▄──██─────▀██▀▀─█░░██ iiiiiiiiiiiiiiiiiii"
   puts "────────────▀█─▀▀█▄█▄─▀▀▀───█────────────▀█░▀█ ------iiiiii-------"
   puts "─────────▄▄▀▀─▀▀▀▀░░▀█────▄█▄▀────────────█░░░ ------iiiiii-------"
   puts "───▄▀▀▀▀▀░░░░░░░░░░░░░▀██▀▀▄▄▀▀──────────██░░░ ------iiiiii-------"
   puts "▄▀▀▄████░░███████░░▄▄▄▄░░▀█▄─▀▀──────────▀█▄▄░ iiiiiiiiiiiiiiiiiii"
   puts "█░░█████▄▄███████▄██████▄▄░▀█──███▄▄────────█▄ nnnnn--------nnnnnn"
   puts "█░░░▀▀▀▀▀▀▀▀▀▀▀░░░░░░░░░▀▀▀░░█─▀███▀───────▄█▀ nnnnnnn------nnnnnn"
   puts "─▀▀▄▄▄▄▄░░░░░░░░░░░░░░░░░░░░▄▀─────────────▀█░ nnn-nnnnn----nnnnnn"
   puts "───▄▀▄▄▀░░░░░░░░░░░░░░░░░░░░█────────────────█ nnn--nnnnnn--nnnnnn"
   puts "▀▀▀─▀▄▀█░░░░░░░░░░░░░░░░░░░░█───────────────▄▀ nnn----nnnnnnnnnnnn"
   puts "─▄▄▀▀──▀▄░░░░░░░░░░░░░░░░░░█────────────────█░ nnn-----nnnnnnnnnnn"
   puts "▀────────▀▄░░░░░░░░░░░░░░▄▀──────────▄█▄▄────█ ggggggggggggggggggg"
   puts "───────────▀▄▄▄▄░░░░░▄▄▄▀────────────▀██▀────█ gggg------------ggg"
   puts "────────────█░░░▀▀▀▀██████████▀▀▀▀▀▀▄▄▄▄▄▄▄▄▄█ gggg---------------"
   puts "───────────▄▀░░░░░░░█▒▒▒▒▒▒▒▒█░░░░░░░░░▄▄░░░░█ ggggggggggggggggggg"
   puts "───────────▀▄▄▄░░░░░█▒▒▒▒▒▒▒▒█░░░░░░░░░▀█▀░░░█ ggggg---------ggggg"
   puts "****************  WELCOME TO  *****************ggggg---------ggggg"
   puts "************* MOVIE TRIVIA KING ***************ggggggggggggggggggg"
   ready?
  end

  def prompt_user
     puts "3 correct answers and you win lvl.1. Are you ready 'y' or 'n'"
  end
      
  def get_user_input
   gets.chomp
  end
  
  def ready?
    prompt_user
    input = get_user_input
    if input == "y"
      puts "Lets Begin!"
      sleep(2)
      system("clear")
      choose_a_category
#Break play game
    elsif input == "n"
      system ("clear")
      random_n_response
    else input != "y" || "n"
      puts "Please key 'y' or 'n'"
      sleep(2)
      system("clear")
      ready?
    end
  end

  def random_n_response 
    n = ["No worries, take your time!", "Hey! no google allowed", "I'm waiting", "🤬  🤬  🤬  🤬  🤬 " "we're waiting on you!" ]
    puts n.sample
    sleep(2)
    ready?
  end 


def game_play_prompt
  puts "******************************************"
  puts "******++*** Choose a Category ************"
  puts "******************************************"
  puts "***** 'A'.Actors ******* 'B'.Movies ******"
  puts "******************************************"
  puts "*** 'C'.How Old ******* 'D'.BOX OFFICE ***"
  puts "******************************************"
  puts "********** 'E'.Dead of Alive *************"
  puts "******************************************"
  puts "* 👏🏻  * 👏  * 👏🏻  * 🎥  * 👏  * 👏  * 👏🏻  * "
end 

  def choose_a_category
    game_play_prompt
    input = get_user_input
    if input == "a"
      puts "ACTORS"
      actors_question
    elsif input == "b"
      puts "MOVIES"

    elsif input == "c"
      puts "HOW OLD"

    elsif input == "d"
      puts "BOX OFFICE"

    elsif input == "e"
      puts "DEAD OR ALIVE"

    else input != "a" || "b" || "c" || "d" || "e"
      puts "key a - e"
      sleep(2)
      system("clear")
      choose_a_category
    end 
  end 


  def actor_names
   Actor.all.collect do |actor_in|
    actor_in.name 
    # binding.pry
   end 
 end 

 def actor_random_name
    name = actor_names.shuffle.sample(1)
    #  binding.pry
    name.join
 end 

 def find_actor_appearence_through_name(name)
    a_id = []
    appeared = []
    Actor.all.find do |actor|
      if actor.name == name
      a_id << actor.id
      end 
    end
   Appearence.all.select do |app|
    if app.actor_id == a_id.join.to_i
      appeared << app
    end 
    end
    appeared
  end 

  def find_actor_movie_instance_through_actor_name(name)
   movie_ids = []
    appearences = []
    movies = [] 
    appearences << find_actor_appearence_through_name(name)
    appearences.flatten.each do |appearence|
    movie_ids << appearence.movie_id 
    # binding.pry
    end 
    movie_ids.each do |id|
     Movie.all.select do |movie|
      if movie.id == id 
        movies << movie
    end
  end 
end 
  movies
  # binding.pry
end 

def find_actor_movie(ins)
  title = []
  Movie.all.each do |movie|
   ins.each do |n| 
  if n.id == movie.id
    title << movie.title
  end
end 
end 
title
end 


def wrong_actors_by_name(name)
  wrong_actors = []
  Actor.all.select do |actor|
    if actor.name != name 
      wrong_actors << actor.name
    end 
  end 
  wrong_actors.sample(3)
end 

def wrong_actors_by_movie_instance(movie_name)
  film_id = []
   Movie.all.select do |movie|
   if movie.title == movie_name
    film_id << movie.id 
    end 
  end
  actor_ids = []
  Appearence.all.each do |appearence|
    if appearence.id == film_id
    actor_ids << appearence.id
    end
  end
  actors_not_in_movie = []
  Actor.all.each do |actor|
    if actor.id != actor_ids.each {|id| id }
    actors_not_in_movie << actor.name
    end 
  end 
actors_not_in_movie.sample(3)
end 
  

def movie_year_by_movie_instance(name)
 
  yr = []
   Movie.all.each do |movie|
    # binding.pry
    name.each do |n| 
   if n.title == movie.title
    yr << movie.year
    # binding.pry
   end 
    end 
  end 
  yr
 
end 



  

  def actors_question
    q = []
    n = actor_names
    rn = actor_random_name
    a = find_actor_appearence_through_name(rn)
    mi = find_actor_movie_instance_through_actor_name(rn)
    wa = wrong_actors_by_name(rn)
    m = find_actor_movie(mi)
    wm = wrong_actors_by_movie_instance(mi)
    my = movie_year_by_movie_instance(mi)
    # binding.pry
    system("clear")

    q << "Which actor appeared in the #{my.to_s} film #{m.flatten.to_s}?"
    
puts q
puts rn
puts wa 

    


  end 
end 



# (actor)played in (year) (movie)
# (actor)was paired with () in (movie)

# movies with actors
# (movie) starred () in (year)
#  (movie) paired (actor) wit ()

# how old?
# in the (year) (movie) how old () was (actor)
# what(y) did (movie) come out starring(actor)

# box office sales
# starring (actor) this (m) grossed (sales)
# which (movie) grossed more at opening 

# dead or alive
# from (movie) (actor) dead or alive?

# correct_array = []

# incorrect_array = []




