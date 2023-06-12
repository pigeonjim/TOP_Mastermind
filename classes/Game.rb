class Game
  require './classes/Board'
  require './classes/The_Code'
  require './modules'
  require './classes/GameConfig.rb'
  require './classes/ComputerGuess.rb'
  
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
    @comp_player = CompGuesser.new(@config)
  end

  def guess
    @current_guess = player_code_input.clone
    guess_processing
  end

  def computer_guess
    @current_guess = @comp_player.random_guess
    guess_processing
  end

  def guess_processing
    @board.populate_row(@current_move, @current_guess)
  end

  def check_colour_input(colour_ary = @current_guess)
    colour_ary.each { |col| return false unless COLOURINPUT.include?(col) }
    return true
  end

  def correct_guess?
    correct = 0
    @current_guess.each_with_index { |colr, idx| correct += 1 if colr == @code.the_code[idx] }
    @board.fill_feedback(@current_move, @current_guess, @code.the_code)
    @current_move += 1
    (correct == @config.code_size) ? (return true) : (return false)
  end

  def player_sets_code
    @current_move = 0
    @code.the_code = player_code_input
  end

  def player_code_input
    input = []
    until input.size == @config.code_size && check_colour_input(input)
      @config.player  == "guess" ? (puts TextOutput::OutputGuessAsk) : (puts TextOutput::OutputCodeAsk)
      puts TextOutput::OutputTheColourGuide
      input = gets.chomp.split('')
      puts TextOutput::OutputError unless input.size == @config.code_size && check_colour_input(input)
    end
    return input
  end
end
