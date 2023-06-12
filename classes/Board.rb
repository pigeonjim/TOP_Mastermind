class Board
  require './classes/Row'

  attr_accessor :row_arry

  def initialize(code_size)
    @row_arry = Array.new(12) { Row.new(code_size) }
  end

  def populate_row(move_no, guess)
    guess.each_with_index do |colour, idx|
      @row_arry[move_no].guess_slots[idx] = colour
    end
  end

  def print_row(move_no)
    4.times { |i| puts row_arry[move_no].guess_slots[i] }
  end
end
