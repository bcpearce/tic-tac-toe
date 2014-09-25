require_relative 'player.rb'

class Game
  
  def initialize
    # board will be a 10-element array (index 0 will be ignored in board referencing)
    # default contents is the index
    @board = Array.new(10)
    (1..9).each { |i| @board[i] = i }
    @players = []
    @moves = []
  end
   
  def board
    @board
  end

  def players
    @players
  end

  def moves
    @moves
  end
  
  def display_board
    puts " #{ @board[7] } | #{ @board[8] } | #{ @board[9] }"
    puts "---+---+---"
    puts " #{ @board[4] } | #{ @board[5] } | #{ @board[6] }"
    puts "---+---+---"
    puts " #{ @board[1] } | #{ @board[2] } | #{ @board[3] }"
  end

  def add_player(symbol)
    @players << Player.new(symbol)
  end

  def update_board(move)

  end

    
end
