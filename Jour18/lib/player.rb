class Player
  attr_accessor :name, :pion

  def initialize(name, pion)
    @name =  name.to_s
    @pion = pion.to_s
  end
end