require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

def player_prez

  player_1 = Player.new("Marc",10)
  player_2 = Player.new("Paul",10)

  print "A ma gauche, #{player_1.name} ! "
  puts "#{player_1.show_state}"
  print "A ma droite, #{player_2.name} ! "
  puts "#{player_2.show_state}"

  until player_1.life_points <= 0 && player_2.life_points <= 0
    puts player_1.attack(player_2)
    break if player_2.life_points <= 0
    puts player_2.attack(player_1)
    break if player_1.life_points <= 0
    puts player_2.show_state
    puts player_1.show_state
  end
end

player_prez