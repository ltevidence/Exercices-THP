require 'controller'
class Router
  attr_accessor :controller

  def initialize
    @controller =  Controller.new
  end

  def perform 
        puts "               ░░░░░░░░░╔╗╔╗░░░░░░░░░░░░░░░░░░░░░░░░░░░░
               ░░░░░░░░╔╝╚╣║░░░░░░░░░░░░░░░░░░░░░░░░░░░░
               ░░░░░░░░╚╗╔╣╚═╦══╗░░░░░░░░░░░░░░░░░░░░░░░
               ░░░░░░░░░║║║╔╗║║═╣░░░░░░░░░░░░░░░░░░░░░░░".yellow
        puts"               ░░░░░░░░░║╚╣║║║║═╣░░░░░░░░░░░░░░░░░░░░░░░
               ░░░░░░░░░╔═══╦═══╦═══╦═══╦══╦═══╗░░░░░░░░
               ░░░░░░░░░║╔═╗║╔═╗║╔═╗║╔═╗╠╣╠╣╔═╗║░░░░░░░░
               ░░░░░░░░░║║░╚╣║░║║╚══╣╚══╗║║║╚═╝║░░░░░░░░".green
        puts"               ░░░░░░░░░║║╔═╣║░║╠══╗╠══╗║║║║╔╔╗╝░░░░░░░░
               ░░░░░░░░░║╚╩═║╚═╝║╚═╝║╚╔╗╠╣╠╣╔╝╚╗░░░░░░░░
               ░░░░░░░░░╚═══╩═╔══╦═╦══╬╬══╦═╩╗╔╝░░░░░░░░
               ░░░░░░░░░░░░░░░║╔╗║╔╣╔╗╠╣║═╣╔═╣║░░░░░░░░░
               ░░░░░░░░░░░░░░░║╚╝║║║╚╝║║║═╣╚═╣╚╗░░░░░░░░".red
        puts"               ░░░░░░░░░░░░░░░║╔═╩╝╚══╣╠══╩══╩═╝░░░░░░░░
               ░░░░░░░░░░░░░░░║║░░░░░╔╝║░░░░░░░░░░░░░░░░
               ░░░░░░░░░░░░░░░╚╝░░░░░╚═╝░░░░░░░░░░░░░░░░".blue

    puts ""
    puts ""
    while true
      puts "-" * 60
      puts "Alors qu'est-ce qui t'interesse aujourd'hui ?              |".yellow
      puts "-" * 60
      puts "1. T'as envie de cracher ton venin ?                       |".green
      puts "-" * 60
      puts "2. Tu veux voir tous les ragots qui circulent ?!           |".red
      puts "-" * 60
      puts "3. Ce potin parle mal de ta maman et tu veux le supprimer ?|".blue
      puts "-" * 60
      puts "4. Quitter l'app                                           |".white
      puts "-" * 60
      params = gets.chomp.to_i

      case params
      when 1
        puts "tu as choisi de créer un gossip :".yellow
        puts "-" * 60
        @controller.create_gossip #Va permettre de passer par la classe Controller pour créer un gossip
      when 2
        puts "Régale toi avec tous ces potins !".green
        puts "-" * 60
        @controller.index_gossips
        puts ""
      when 3
        puts "Ok, quel potin veux tu supprimer ?".red
         @controller.delete_gossips
        puts "C'est fait Big Brother, t'as plus rien à craindre.".red
        puts "-" * 60
      when 4
          puts "XO, XO.".rjust(60)
          break #Sort de la boucle infinie et quitte l'application
    
      else 
        puts "Ce choix n'est pas défini, recommence" #Reprend au début de la boucle while true
      end
    end
  end
end