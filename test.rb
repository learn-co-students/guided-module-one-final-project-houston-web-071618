class Test
  def fight
    true
  end

  def result_of_fight_message
    #if hero wins
    if fight
      print "Yoda: , you won! Now, go forth and fight again if you have the courage. You might not be as lucky next time."
    else
      print "Yoda: , you are dead meat... So sorry. Try again on your next life?"
    end
  end
end

test1 = Test.new()
# p test1.fight

# test1.result_of_fight_message
