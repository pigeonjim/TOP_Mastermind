class Peg
  attr_accessor :a_colour

  COLOURS = %w(red blue yellow green black pink blank)
  WRONGPLACE = 'white'.freeze

  def initialize(the_colour = 'blank')
    @a_colour = check_colour(the_colour)
  end

  def check_colour(check_colour)
    temp = check_colour.clone
    until Peg::COLOURS.include?(temp)
      puts 'Incorect Colour choice. Please try again'
      temp = gets.chomp.downcase
    end
    return temp
  end
end
