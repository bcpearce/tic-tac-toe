require_relative '../lib/player'

describe "Player" do 

  before { @player = Player.new('X') }

  subject { @player }

  it { should respond_to("symbol") }
  it { should respond_to("make_move") }
  
  describe "symbol" do
    its("symbol") { should eq('X') }
  end
end
