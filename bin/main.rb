require_relative '../lib/game.rb'

game = Game.new

game.display_board

player1 = game.add_player('X')
player2 = game.add_player('O')

puts "Player #{player1.symbol}, enter a position:"


