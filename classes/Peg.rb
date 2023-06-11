class Peg
  attr_accessor :a_colour

  COLOURS = %w(red blue yellow green black pink blank)
  WRONGPLACE = 'white'.freeze

  def initialize(the_colour = 'blank')
    @a_colour = the_colour
  end

  def set_guess_colour(check_colour)
    until Peg::COLOURS.include?(check_colour)
      puts 'Incorect Colour choice. Please try again'
      check_colour = gets.chomp.downcase
    end
    @a_colour = check_colour
  end
end
