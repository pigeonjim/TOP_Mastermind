class Code
  attr_accessor :the_code

  def initialize
    @the_code = Array.new(Game::CODE_SIZE)
  end

  def random_code
    @the_code.each { |apeg| apeg = PegColours::COLOURS[0..5].sample }
  end

  def get_code_colours
    colours_ary = Array.new
    the_code.each { |apeg| colours_ary.push(apeg.a_colour) }
    return colours_ary
  end
end
