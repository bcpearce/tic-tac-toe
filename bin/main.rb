require_relative '../lib/game.rb'

def move(player)
  puts "\nPlayer #{player.symbol}, enter a position:"
  player.make_move(gets.chomp.to_i)
end

@game = Game.new

@game.display_board

@player1 = @game.add_player('X')
@player2 = @game.add_player('O')

while @game.open_positions?
  current_player ||= @player1

  unless @game.update_board(move(current_player))
    puts "Invalid move, try again."
    next
  end
  @game.display_board

  if @game.is_winner?(current_player)
    puts "\nYou Win!\n"
    break
  elsif @game.is_draw?
    puts "\nCat's Game...\n"
    break
  end

  if current_player == @player1
    current_player = @player2
  elsif current_player == @player2
    current_player = @player1
  end


end





