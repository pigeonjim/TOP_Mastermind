require './classes/Game'

the_game = Game.new
config = GameConfig.new
game_over = false
the_game.code.random_code
until the_game.current_move > config.no_moves || game_over
  the_game.guess
  game_over = the_game.correct_guess?
  puts "Current Move #{the_game.current_move}\n\n"
end
game_over ? (puts "#{TextOutput::OutputWinner}") : (puts "#{TextOutput::OutputLoser}")
