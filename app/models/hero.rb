class Hero < ActiveRecord::Base
  has_one :weapon
  has_many :battles

  # attr_accessor :name

  # def initialize(name)
  #   @name = name
  # end

  def equipe_weapon(weapon)
    #equipe weapon
    #5 weapons to choice from
    #need to cover user's input to actual weapon stored in database
    # 1. blue light sabre
    # 2. blaster
    # 3. flame thrower
    # 4. invisible cloak
    # 5. jumpo jet pack

    case weapon
    when weapon == 1
      self.weapon = Weapon.find_by(name: "Blue Light Saber")
    when weapon == 2
      self.weapon = Weapon.find_by(name: "Blaster")
    when weapon == 3
      self.weapon = Weapon.find_by(name: "Flame Thrower")
    when weapon == 4
      self.weapon = Weapon.find_by(name: "Jumbo Jet Pack")
    else
      self.weapon = Weapon.find_by(name: "Invisible Cloak")
    end
  end

  # def attack_point
  #   #weapon power level
  #   self.weapon.power_level
  # end
end
