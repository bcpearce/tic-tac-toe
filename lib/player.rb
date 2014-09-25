class Player
  def initialize(symbol)
    @symbol = symbol
  end

  def symbol
    @symbol
  end

  def make_move(position)
    return @symbol, position 
  end
end
