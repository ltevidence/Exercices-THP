require 'bundler'
Bundler.require
require 'colorized_string'

$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'




puts "๐ฆ "*20
puts "๐ฆ     Une petite partie de morpion, รงa vous tente ?     ๐ฆ"
puts "๐ฆ              Qui sera le grand gagnant ?!             ๐ฆ"
puts "๐ฆ "*20

puts ""
puts "Pour commencer, entre ton nom de joueur :".blue
print "๐ "
user_name1 = gets.chomp
puts "Quel est ton adversaire ?".red
print "๐ "
user_name2 = gets.chomp
puts "Bienvenue, #{user_name1} et #{user_name2} ! Que la partie commence !"
puts ""

my_game = Game.new(user_name1, user_name2)

my_game.turn
my_game.new_round

