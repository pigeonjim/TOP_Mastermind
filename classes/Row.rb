class Row
  attr_accessor :guess_slots, :feeback_slots

  def initialize
    @guess_slots = Array.new(Game::CODE_SIZE) { 'W' }
    @feeback_slots = Array.new(Game::CODE_SIZE) { 'W' }
  end
end
