class GameConfig
attr_accessor :code_size, :no_moves, :player

    PlayModes = %w(guess code)
    def initialize
        @code_size = 4
        @no_moves = 12
        @player = "guess"
    end
end