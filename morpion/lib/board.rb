require_relative 'boardcase'

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :board_hash


  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @board_hash = {:A1 => BoardCase.new("A1"), :B1 => BoardCase.new("B1"), :C1 => BoardCase.new("C1"), :A2 => BoardCase.new("A2"), :B2 => BoardCase.new("B2"), :C2 => BoardCase.new("C2"), :A3 => BoardCase.new("A3"), :B3 => BoardCase.new("B3"), :C3 => BoardCase.new("C3")}
    
  end

  def play_turn(player_to_save)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
        #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
        puts "#{player_to_save.name} à toi de jouer ! Que souhaites-tu faire ? (entre A1, B1,...)"
        print "👉 "
        choix = gets.chomp
        while choix != "A1" && choix != "A2" && choix != "A3" && choix != "B1" && choix != "B2" && choix != "B3" && choix != "C1" && choix != "C2" && choix != "C3" || board_hash[choix.to_sym].value.eql?(" ") == false
          puts "Essaie encore !"
          choix = gets.chomp
        end
        choix = choix.to_sym
        board_hash[choix].value = player_to_save.value
      end

      def victory(player_to_save)
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    tt = [board_hash[:A1].value, board_hash[:A2].value, board_hash[:A3].value, board_hash[:B1].value, board_hash[:B2].value, board_hash[:B3].value, board_hash[:C1].value, board_hash[:C2].value, board_hash[:C3].value]

    # A1 + A2 + A3
    if tt[0] == "O" && tt[1] == "O" && tt[2] == "O" || tt[0] == "X" && tt[1] == "X" && tt[2] == "X"
      puts "#{player_to_save.name} a gagné"
      return true
    # B1 + B2 + B3
  elsif tt[3] == "O" && tt[4] == "O" && tt[5] == "O" || tt[3] == "X" && tt[4] == "X" && tt[5] == "X"
    puts "#{player_to_save.name} a gagné"
    return true
    #A1 + B2 + C3
  elsif tt[0] == "O" && tt[4] == "O" && tt[8] == "O" || tt[0] == "X" && tt[4] == "X" && tt[8] == "X"
    puts "#{player_to_save.name} a gagné"
    return true
    #A3 + B2 + C1
  elsif tt[2] == "O" && tt[4] == "O" && tt[6] == "O" || tt[2] == "X" && tt[4] == "X" && tt[6] == "X"
    puts "#{player_to_save.name} a gagné"
    return true
    #A1 + B1 + C1
  elsif tt[0] == "O" && tt[3] == "O" && tt[6] == "O" || tt[0] == "X" && tt[3] == "X" && tt[6] == "X"
    puts "#{player_to_save.name} a gagné"
    return true
    #A2 + B2 + C2
  elsif tt[1] == "O" && tt[4] == "O" && tt[7] == "O" || tt[1] == "X" && tt[4] == "X" && tt[7] == "X"
    puts "#{player_to_save.name} a gagné"
    return true
    #A3 + B3 + C3
  elsif tt[2] == "O" && tt[5] == "O" && tt[8] == "O" || tt[2] == "X" && tt[5] == "X" && tt[8] == "X"
    puts "#{player_to_save.name} a gagné"
    return true
  else
    return false

  end 
end
end