
def which_hero(hero_number)
  #find out which hero the user selected

  case hero_number
  when 1
    my_hero = "Luke Skywalker"
  when 2
    my_hero = "Yoda"
  when 3
    my_hero = "C-3PO"
  when 4
    my_hero = "Obi-Wan Kenobi"
  else
    my_hero = "Chewbacca"
  end
end

p which_hero(3)
