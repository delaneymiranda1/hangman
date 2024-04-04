require './lib/board'
require './lib/game'
require './lib/player'

player = Player.new("Player")
game = Game.new(player)
game.play
