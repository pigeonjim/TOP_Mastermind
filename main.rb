require './classes/Game'

the_game = Game.new
the_game.code.random_code
puts the_game.code.get_code_colours
