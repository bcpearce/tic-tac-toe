require_relative 'player.rb'

class Game

  WINNING_LINES = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [7,5,3]]
  
  def initialize
    # board will be a 10-element array (index 0 will be ignored in board referencing)
    # default contents is the index
    @board = Array.new(10)
    (1..9).each { |i| @board[i] = i }
    @players = []
    @moves = []
    @status = { :winner => 0  }
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
    if @board.include?(move[1])
      @board[move[1]] = move[0]
    end
  end

  def is_winner?(player)
    WINNING_LINES.any? do |victory| 
      victory.all? { |position| @board[position] == player.symbol } 
    end
  end


    
end
