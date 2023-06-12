class CompGuesser
    require './modules'
    require './classes/GameConfig.rb'

    include PegColours

    def initialize (config = GameConfig.new)
        @correct_ary = [:blank, :blank, :blank, :blank]
        @my_config = config
    end

    def random_guess
        the_guess = Array.new(@my_config.code_size)
        the_guess.each_with_index { |apeg, idx| the_guess[idx] = PegColours::COLOURINPUT[0..5].sample }
        puts the_guess.join(' ')
        return the_guess
    end
end
