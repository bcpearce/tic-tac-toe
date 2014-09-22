class Game
  @board[3][3]
  
  def board
    @board
  end
  
  
  
  def print_board
    print line = "  #{board[6]} . #{board[7]} . #{board[8]}\n"
    puts "#{"."*line.length}"
  	 print line = "  #{board[3]} . #{board[4]} . #{board[5]}\n"
  	 puts "#{"."*line.length}"
  	 print line = "  #{board[0]} . #{board[1]} . #{board[2]}\n"
  end

end
