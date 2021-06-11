class Player
  attr_accessor :name, :life_points
  @@players = Array.new

  def initialize(name,life_points)
    @name = name
    @life_points = life_points
    @@players << self
  end

  def self.all
    return @@players
  end
  def self.count
    return @@players.count
  end

  def show_state
    print "#{@name} a #{life_points} points de vie."
  end

  def get_damage(damage)
    @life_points = @life_points - damage
    if @life_points < 0 
      puts "Le joueur #{name} a été tué !"
    end
  end

  def attack(player)
    puts "#{@name} attaque le joueur #{player.name} !"
    damage_inflicted = compute_damage 
    player.get_damage(damage_inflicted)
    if player.life_points > 0
    return "Le joueur #{@name} a fait perdre #{damage_inflicted} points de vie à #{player.name}!"
    end
  end

  def compute_damage
    return rand(1..6)
  end
end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(weapon_level)
    @name = name
    @weapon_level = 1
    @life_points = 100
  end

  def show_state
    print "#{@name} a #{life_points} points de vie et une arme de niveau #{weapon_level}."
  end

  def compute_damage
    return rand(1..6) * @weapon_level
  end

  def search_weapon
    @weapon_level = rand(1..6) 
    if weapon_level >= 2
      puts "Super ! Cette arme est de niveau #{weapon_level} : Tu la prends."
    else puts "Ton arme est du même niveau. Laisse tomber."
    end
  end
  def search_health_pack
    health_pack = rand(1..6)
    case health_pack
    when 1
      puts "Tu n'as rien trouvé !"
    when 2..5
      puts "Bravo ! J'ai trouvé + 50 points de vie !"
    when 6
      puts "Bravo ce pack est de + 80 points de vie !"
    else 
      print "ERROR : HEALTH UNKNOWN"
    end
  end
end