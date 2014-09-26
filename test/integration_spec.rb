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

    describe "when player 2 tries the same move" do

      before do
        move = @player2.make_move(5)
        @game.update_board(move)
      end

      subject { @game.board[5] }
      it { should_not eq(@player2.symbol) }

    end
  end

  describe "when a player makes a horizontal row" do

    before do
      (1..3).each do |x|
        move = @player1.make_move(x)
        @game.update_board(move)
      end
    end

    describe "that player wins" do
      subject { @game.is_winner?(@player1) }

      it { should eq(true) }
    end
  end

end

  

