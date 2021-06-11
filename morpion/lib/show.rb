require_relative 'board'

class Show

  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
      puts "         A         B         C       "
      print "    ","-"*31, "\n"
      puts "    |         |         |         |"
      puts "1   |    #{board.board_hash[:A1].value}    |    #{board.board_hash[:B1].value}    |    #{board.board_hash[:C1].value}    |"
      puts "    |         |         |         |"
      print "    ","-"*31, "\n"
      puts "    |         |         |         |"
      puts "2   |    #{board.board_hash[:A2].value}    |    #{board.board_hash[:B2].value}    |    #{board.board_hash[:C2].value}    |"
      puts "    |         |         |         |"
      print "    ","-"*31, "\n"
      puts "    |         |         |         |"
      puts "3   |    #{board.board_hash[:A3].value}    |    #{board.board_hash[:B3].value}    |    #{board.board_hash[:C3].value}    |"
      puts "    |         |         |         |"
      print "    ","-"*31, "\n"
  end

end

