require_relative '../lib/game.rb'


describe "Game" do 

  before { @game = Game.new }

  subject { @game }

  it { should respond_to("board") }
  it { should respond_to("players") }
  it { should respond_to("add_player") }
  it { should respond_to("update_board") }
  it { should respond_to("moves") }
  it { should respond_to("is_winner?") }
  it { should respond_to("open_positions?") }

  describe "players" do
    
    describe "when adding players to the game" do
      before do 
        @player1 = @game.add_player('X')
        @player2 = @game.add_player('O')
      end
     
      subject { @game.players }

      it { should have(2).items }
    end
  end

  describe "positions" do

    subject { @game.open_positions? }

    describe "when there are open positions" do
      it { should eq(true) }
    end

    describe "when no positions are open" do
      before { (1..9).each { |i| @game.board[i] = 'X' } }
      it { should_not eq(true) }
    end
  end

end