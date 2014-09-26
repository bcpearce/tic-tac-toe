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

    it "should have that player's symbol" do
      @game.board[1] == @game.board[2] && @game.board[1] == @game.board[3] && @game.board[3] == @player1.symbol
    end

    describe "that player wins" do
      subject { @game.is_winner?(@player1) }

      it { should eq(true) }
    end
  end

  describe "when players create a draw" do

    before do
      # play to a draw
      @game.update_board(@player1.make_move(1)) 
      @game.update_board(@player2.make_move(3)) 
      @game.update_board(@player1.make_move(2)) 
      @game.update_board(@player2.make_move(6))  
      @game.update_board(@player1.make_move(9)) 
      @game.update_board(@player2.make_move(8))  
      @game.update_board(@player1.make_move(4)) 
      @game.update_board(@player2.make_move(7))  
      @game.update_board(@player1.make_move(5))  
    end

    subject { @game.is_draw? }
    it { should eq(true) }
    
  end  

end

  

