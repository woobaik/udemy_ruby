require_relative 'game'
require_relative 'player'

players = [
  Player.new("Joungwoo",:"X"),
  Player.new("Haram",:"O")
]

game = Game.new(players)
p game
