class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_accessor :name, :value

  
  def initialize(player_name, player_value)
    #TO DO : doit régler son nom et sa valeur
    @name = player_name
    @value = player_value
  end
end

