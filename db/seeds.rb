Hero.delete_all
Villain.delete_all

#heros
luke = Hero.create(name: "Luke Skywalker", power_level: 1)
yoda = Hero.create(name: "Yoda", power_level: 2)
c_3po = Hero.create(name: "C-3PO", power_level: 5)
obi_wan = Hero.create(name: "Obi-Wan Kenobi", power_level: 5)
chewbacca = Hero.create(name: "Chewbacca", power_level: 5)

#villainsf
darth_vader = Villain.create(name: "Darth Vader", power_level: 4)
darth_sith = Villain.create(name: "Darth Sith", power_level: 6)
palpatine = Villain.create(name: "Palpatine", power_level: 1)
storm_trooper = Villain.create(name: "Storm Trooper", power_level: 3)
general_grevous = Villain.create(name: "General Grevous", power_level: 4)
