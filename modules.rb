

module PegColours
    COLOURINPUT = %w(r b y g o p)
    COLOURS = {:r => "\e[31m", :b => "\e[34m", :y => "\e[33m", 
                :g => "\e[32m", :o => "\e[38;2;#{255};#{165};#{0}m", :p => "\e[38;2;#{255};#{192};#{203}m"}
    WRONGPLACE = 'w'.freeze
  end

  module TextOutput
    require './classes/GameConfig.rb'
    config = GameConfig.new
    OutputGuessAsk = "Please make a guess
    using #{PegColours::COLOURS[:r]}r, #{PegColours::COLOURS[:b]}b, #{PegColours::COLOURS[:y]}y, #{PegColours::COLOURS[:g]}g, #{PegColours::COLOURS[:o]}o, #{PegColours::COLOURS[:p]}p \e[0m
    to input a #{config.code_size} digit code"
    OutputError = "\e[1;31m\nIncorrect entry. Please try again\n\e[0m"
  end