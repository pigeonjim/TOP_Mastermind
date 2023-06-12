class Row
  attr_accessor :guess_slots, :feeback_slots

  def initialize(code_size)
    @guess_slots = Array.new(code_size) { ':blank' }
    @feeback_slots = Array.new(code_size) { ':blank' }
  end
end
