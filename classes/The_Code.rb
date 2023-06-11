class Code
  require './classes/Peg'
  attr_accessor :the_code

  def initialize
    @the_code = Array.new(Game::CODE_SIZE, Peg.new())
  end

end