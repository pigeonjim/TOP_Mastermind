module PegColours
  COLOURINPUT = %w(r b y g o p)
  COLOURS = {:r => "\e[31m", :b => "\e[34m", :y => "\e[33m", 
              :g => "\e[32m", :o => "\e[38;2;#{255};#{165};#{0}m", :p => "\e[38;2;#{255};#{192};#{203}m"}
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
    until guess.size == CODE_SIZE && check_colour_input(guess)
      output_guess_ask
      guess = gets.chomp.split('')
      output_error unless guess.size == CODE_SIZE && check_colour_input(guess)
    end
    @current_guess = guess.clone
    @board.populate_row(@current_move, @current_guess)
  end

  def check_colour_input(colour_ary = @current_guess)
    colour_ary.each { |col| return false unless COLOURINPUT.include?(col) }
    return true
  end

  def output_error
    puts "\e[1;31m\nIncorrect entry. Please try again\n\e[0m"
  end

  def output_guess_ask
    puts "Please make a guess
    using #{COLOURS[:r]}r, #{COLOURS[:b]}b, #{COLOURS[:y]}y, #{COLOURS[:g]}g, #{COLOURS[:o]}o, #{COLOURS[:p]}p \e[0m
    to input a #{CODE_SIZE} digit code"
  end
end
