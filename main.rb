require './classes/Game'

the_game = Game.new
config = GameConfig.new

the_game.code.random_code
config.no_moves.times{ |round|
  the_game.guess
  puts the_game.correct_guess?
}