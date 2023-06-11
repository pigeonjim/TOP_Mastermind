class Code
  require './classes/Peg'
  attr_accessor :the_code

  def initialize
    @the_code = Array.new(Game::CODE_SIZE) {Peg.new()}
  end
  def random_code
    the_code.each {|apeg| apeg.a_colour = Peg::COLOURS[0..5].sample
                    }
  end
  def get_code_colours
    colours_ary = Array.new
    the_code.each {|apeg| colours_ary.push(apeg.a_colour)}
    puts colours_ary.join(' ')
  end
end