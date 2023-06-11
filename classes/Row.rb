class Row
    require './classes/Peg'
    attr_accessor :guess_slots, :feeback_slots
    
    def initialize
        @guess_slots = Array.new(Game::CODE_SIZE, Peg.new())
        @feeback_slots = Array.new(Game::CODE_SIZE, Peg.new())
    end



end