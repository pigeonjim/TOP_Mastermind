class Game
  require './classes/Board'
  require './classes/The_Code'
  require './modules'
  require './classes/GameConfig.rb'
  
  include PegColours, TextOutput
  attr_accessor :board, :code, :current_guess
  attr_reader :current_move

  def initialize
    @config = GameConfig.new
    @board = Board.new(@config.code_size)
    @code = Code.new(@config.code_size)
    @current_move = 0
    @current_guess = []
    @feedback = []
  end

  def guess
    guess = []
    until guess.size == @config.code_size && check_colour_input(guess)
      puts TextOutput::OutputGuessAsk
      guess = gets.chomp.split('')
      puts TextOutput::OutputError unless guess.size == @config.code_size && check_colour_input(guess)
    end
    @current_guess = guess.clone
    @board.populate_row(@current_move, @current_guess)
  end

  def check_colour_input(colour_ary = @current_guess)
    colour_ary.each { |col| return false unless COLOURINPUT.include?(col) }
    return true
  end

  def correct_guess?
    puts "#{@code.the_code}\n\n"
    correct = 0
    @current_guess.each_with_index { |colr, idx| correct += 1 if colr == @code.the_code[idx] }
    @board.fill_feedback(@current_move, @current_guess, @code.the_code)
    @current_move += 1
    (correct == @config.code_size) ? (return true) : (return false)
  end

end
