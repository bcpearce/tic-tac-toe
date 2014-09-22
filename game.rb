class Game
  @board
  
  def initialize
    @board = [ [7, 8, 9], [4, 5, 6], [1, 2, 3] ]
  end
   
  def board
    @board
  end
  
  def print
    @board.to_a.each { |row| puts "#{ row[0] } | #{ row[1] } | #{ row[2] }" }
  end
    
end
