require_relative '../lib/game.rb'
require_relative '../lib/player.rb'

describe "Players playing the game" do 

  before do 
    @game = Game.new
    @player1 = Player.new('X')
    @player2 = Player.new('O')
  end

  describe "when player 1 makes the first move" do

    before do 
      move = @player1.make_move(5)
      @game.update_board(move)  
    end

    subject { @game.board[5] }

    it { should eq(@player1.symbol) }

  end

end

  

