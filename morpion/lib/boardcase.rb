require_relative 'player'

class BoardCase < Player
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :value, :position

  
  def initialize(position, value = " ")
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    #@value = [player1("X"), player2("O")]
    @value = value
    @position = position
  end
  
end