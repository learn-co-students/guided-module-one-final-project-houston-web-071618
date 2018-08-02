Hero.delete_all
Villain.delete_all
Weapon.delete_all

#heros
luke = Hero.create(name: "Luke Skywalker")
yoda = Hero.create(name: "Yoda")
c_3po = Hero.create(name: "C-3PO")
obi_wan = Hero.create(name: "Obi-Wan Kenobi")
chewbacca = Hero.create(name: "Chewbacca")

#villains
darth_vader = Villain.create(name: "Darth Vader", weapon: "red light sabre", power_level: 4)
darth_sith = Villain.create(name: "Darth Sith", weapon: "double saber", power_level: 6)
palpatine = Villain.create(name: "Palpatine", weapon: "red light sabre", power_level: 1)
storm_trooper = Villain.create(name: "Storm Trooper", weapon: "blaster", power_level: 3)
general_grevous = Villain.create(name: "General Grevous", weapon: "multiple sabers", power_level: 4)

#weapons
blue_light_saber = Weapon.create(name: "Blue Light Saber", power_level: 1)
blaster = Weapon.create(name: "Blaster", power_level: 3)
flame_thrower = Weapon.create(name: "Flame Thrower", power_level: 5)
jumbo_jet_pack = Weapon.create(name: "Jumbo Jet Pack", power_level: 4)
invisible_cloak = Weapon.create(name: "Invisible Cloak", power_level: 2)
