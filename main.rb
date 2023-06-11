require './classes/Board'
require './classes/Game'
game = Game.new
game.guess
game.board.print_row(game.current_move)
