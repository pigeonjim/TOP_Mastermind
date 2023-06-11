class Game
  require './classes/Board'
  require './classes/The_Code'

  attr_accessor :board, :code

  CODE_SIZE = 4
  def initialize
    @board = Board.new
    @code = The_Code.new
  end
end
