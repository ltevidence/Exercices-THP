require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

File.readlines("ascii.txt") do |line|
    puts line
  end

  puts "Quel est ton pseudo :"
  print "> "
  user = HumanPlayer.new(gets.chomp.to_s)
  enemies = Array.new
  player_1 = Player.new("Josiane",10)
  player_2 = Player.new("José",10)
  enemies << player_1 << player_2
  puts "-------------------------------------"
  puts "Bienvenue dans la partie #{user.name} !"
  puts "-------------------------------------"
  puts "Attention, deux adversaire viennent d'entrer en combat : #{player_1.name} et #{player_2.name} !"
  while player_2.life_points > 0 && (player_1.life_points >0 || player_2.life_points >0)
    puts "-------------------------------------"
    puts "Dans quel état es-tu ?"
    user.show_state
    puts "On fait quoi ensuite ?"
    puts "-------------------------------------"
    puts "a - Recherche une nouvelle arme"
    puts "s - Recherche un pack de santé"
    puts "-------------------------------------"  
    puts "Attaque à vue !"
    puts "-------------------------------------"
    puts "0 - #{player_1.name} a #{player_1.life_points} points de vie."
    puts "1 - #{player_2.name} a #{player_2.life_points} points de vie."
    puts "-------------------------------------"
    puts "Entre ce que tu veux faire : "
    print "> "
    user_input = gets.chomp
    if user_input == "a"
      user.search_weapon
    elsif user_input == "s"
      user.search_health_pack
    elsif user_input == "0"
      user.attack(player_1)
    elsif user_input == "1"
      user.attack(player_2)
      puts ""
    else puts "Cette touche n'est pas valide !!!"
      puts ""
    end
    puts "-------------------------------------"
    puts "Attention ! Les ennemis ripostent :"
    puts "-------------------------------------"
    enemies.each do |player|
      if player.life_points > 0
        player.attack(user)
      else puts "#{player.name} ne peut plus combattre."
      end
    end
  end
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
