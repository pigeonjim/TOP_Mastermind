module PegColours
  COLOURS = %w(r b y g o p)
  WRONGPLACE = 'w'.freeze
end

class Game
  require './classes/Board'
  require './classes/The_Code'
  include PegColours
  attr_accessor :board, :code, :current_guess
  attr_reader :current_move

  CODE_SIZE = 4
  def initialize
    @board = Board.new
    @code = Code.new
    @current_move = 0
    @current_guess = []
    @feedback = []
  end

  def guess
    guess = []
    until guess.size == CODE_SIZE
      puts "Please make a guess \n using r - red, b - blue, y - yellow, g - green, o -  orange, p -  pink \n
          to input a #{CODE_SIZE} digit code"
      guess = gets.chomp.split('')
    end
    @current_guess = guess.clone
    @board.populate_row(@current_move, @current_guess)
  end
end
