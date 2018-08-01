class Hero < ActiveRecord::Base
  has_many :weapons
  has_many :battles

  # def initialize(name)
  #   @name = name
  # end

  # def equipe_weapon(weapon)
  #   #equipe weapon
  #   #5 weapons to choice from
  #   #need to cover user's input to actual weapon stored in database
  #   # 1. blue light sabre
  #   # 2. blaster
  #   # 3. flame thrower
  #   # 4. invisible cloak
  #   # 5. jumpo jet packs

  #   case weapon
  #   when weapon == 1
  #     self.weapon = blue_light_sabre
  #   when weapon == 2
  #     self.weapon = blaster
  #   when weapon == 3
  #     self.weapon = flame_thrower
  #   when weapon == 4
  #     self.weapon = invisible cloak
  #   else
  #     self.weapon = jumpo_jet_packs
  #   end
  # end

  # def attack_point
  #   #weapon power level
  #   self.weapon.power_level
  # end
end
