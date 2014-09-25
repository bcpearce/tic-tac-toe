require_relative '../lib/player'

describe "Player" do 

  before { @player = Player.new('X') }

  subject { @player }

  it { should respond_to("symbol") }
  it { should respond_to("make_move") }
  
  describe "symbol" do
    its("symbol") { should eq('X') }
  end

  describe "making moves"  do

    before { @move = @player.make_move(5) }

    subject { @move }

    it { should eq(['X', 5]) }
  end
end
