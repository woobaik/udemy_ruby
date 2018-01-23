require_relative 'game'
require_relative 'player'

players = [
  Player.new("Joungwoo",:"X"),
  Player.new("Haram",:"O")
]

game = Game.new(players)
puts "Welcome to the Tic Tac Toe"
game.print_board
puts "Please select your move"
game.take_turn(players[0])
game.print_board
