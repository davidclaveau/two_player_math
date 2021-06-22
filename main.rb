require './math_game'
require './player'
require './game'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

game = Game.new("Player 1")
math = MathLogic.new

def start game, math, player1, player2

  game.ask_math math

  game.player_input

  game.check_answer math, player1, player2

  game.check_game_over player1, player2

  game.turn

  start game, math, player1, player2

end

start game, math, player1, player2