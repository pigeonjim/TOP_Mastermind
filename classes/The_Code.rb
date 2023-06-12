class Code
  require './modules'
  include PegColours
  attr_accessor :the_code

  def initialize(code_size)
    @the_code = Array.new(code_size)
  end

  def random_code
    @the_code.each_with_index { |apeg, idx| @the_code[idx] = PegColours::COLOURINPUT[0..5].sample }
  end

  def get_code_colours
    colours_ary = Array.new
    @the_code.each { |apeg| colours_ary.push(apeg) } 
    return colours_ary.join(' ')
  end
end
