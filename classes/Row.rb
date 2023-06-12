class Row
  attr_accessor :guess_slots, :feeback_slots

  def initialize(code_size)
    @guess_slots = Array.new(code_size) { 'W' }
    @feeback_slots = Array.new(code_size) { 'W' }
  end
end
