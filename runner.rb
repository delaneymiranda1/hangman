require './lib/board'
require './lib/game'
require './lib/player'

player = Player.new("Player")
computer = Computer.new
game = Game.new(player, computer)
game.play
