class Board
  require './classes/Row'

  attr_accessor :row_arry

  def initialize(code_size)
    @row_arry = Array.new(12) { Row.new(code_size) }
  end

  def populate_row(move_no, guess)
    guess.each_with_index do |colour, idx|
      @row_arry[move_no].guess_slots[idx] = colour.to_sym
    end
  end

  def print_row(move_no)
    4.times { |i| puts row_arry[move_no].guess_slots[i] }
  end

  def fill_feedback(move_no, guess, code)
    guess.each_with_index do |colour, idx|
      @row_arry[move_no].feeback_slots[idx] = guess_at_index?(idx, colour, code)
    end
    print_feedback(move_no)
  end

  def guess_at_index?(indx, colour, code)
    return colour.to_sym if code[indx] == colour
    return "w".to_sym if code.include?(colour)
    return "blank".to_sym
  end

  def print_feedback(move_no)
    @row_arry[move_no].feeback_slots.each{ |peg| print "#{PegColours::COLOURS[peg]} "}
    puts "#{PegColours::COLOURS[:reset]}\n"
  end


end
