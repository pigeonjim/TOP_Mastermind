module PegColours
    COLOURINPUT = %w(r b y g o p)
    COLOURS = { :r => "\e[31mr", :b => "\e[34mb", :y => "\e[33my", 
                :g => "\e[32mg", :o => "\e[38;2;#{255};#{165};#{0}mo", :p => "\e[38;2;#{255};#{192};#{203}mp", :w => "\e[37m\u25CB", :blank => "\e[30m\u25C6",
                :reset => "\e[0m" }
end

module TextOutput
    require './classes/GameConfig.rb'
    config = GameConfig.new
    OutputGuessAsk = "Please make a guess"
    OutputCodeAsk = "Please input a code"
    OutputTheColourGuide = "using #{PegColours::COLOURS[:r]}, #{PegColours::COLOURS[:b]}, #{PegColours::COLOURS[:y]}, #{PegColours::COLOURS[:g]}, #{PegColours::COLOURS[:o]}, #{PegColours::COLOURS[:p]}\e[0m
    to input a #{config.code_size} digit code"
    OutputError = "\e[1;31m\nIncorrect entry. Please try again\n\e[0m"
    OutputWinner = "Well done you win"
    OutputLoser = "Oh dear you lost"
end