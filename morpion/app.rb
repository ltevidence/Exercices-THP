require 'bundler'
Bundler.require
require 'colorized_string'

$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'




puts "🦄 "*20
puts "🦄     Une petite partie de morpion, ça vous tente ?     🦄"
puts "🦄              Qui sera le grand gagnant ?!             🦄"
puts "🦄 "*20

puts ""
puts "Pour commencer, entre ton nom de joueur :".blue
print "👉 "
user_name1 = gets.chomp
puts "Quel est ton adversaire ?".red
print "👉 "
user_name2 = gets.chomp
puts "Bienvenue, #{user_name1} et #{user_name2} ! Que la partie commence !"
puts ""

my_game = Game.new(user_name1, user_name2)

my_game.turn
my_game.new_round

