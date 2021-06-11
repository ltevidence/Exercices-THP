class Board < BoardCase
  attr_accessor :board_array
  @board_array = Array.new
  def initialize(board_array)
    @board_array = board_array
    @board_array << board_array
  end
end
binding.pry