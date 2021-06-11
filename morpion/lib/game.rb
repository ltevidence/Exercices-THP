require_relative 'show'


class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :player_array, :new_board, :current_player, :status

  def initialize(player1_name, player2_name)
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @player_array = [Player.new(player1_name, "X".red), Player.new(player2_name, "O".blue)]
    @new_board = Board.new
    @current_player = @player_array[0]
    @status = "En cours"
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). 
    #Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    Show.new.show_board(new_board)

    i = 0
    while i <= 8 && new_board.victory(current_player) == false
      current_player = i.even? ? player_array[0] : player_array[1]
      new_board.play_turn(current_player)
      Show.new.show_board(new_board)
      i += 1
    end
    puts "Waouh, match nul !" if i == 10
  end

  def new_round
    puts "Une nouvelle partie ? (taper 1 pour oui taper 2 pour non au 351616)"
    print "👉 "

    if gets.chomp == "1"
      @new_board = Board.new
      turn
    else
      puts "A bientôt pour de nouveaux morpions !"
    end
  end
end

