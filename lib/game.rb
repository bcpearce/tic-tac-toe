require_relative 'player.rb'

class Game
  
  def initialize
    @board = [ [7, 8, 9], [4, 5, 6], [1, 2, 3] ]
    @players = []
  end
   
  def board
    @board
  end

  def players
    @players
  end
  
  def display_board
    @board.to_a.each do |row| 
      puts " #{ row[0] } | #{ row[1] } | #{ row[2] }"
      puts "---+---+---" unless @board.to_a.last == row
    end
  end

  def add_player(symbol)
    @players << Player.new(symbol)
  end
    
end
