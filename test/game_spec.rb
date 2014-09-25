require_relative '../lib/game.rb'


describe "Game" do 

  before { @game = Game.new }

  subject { @game }

  it { should respond_to("board") }
  it { should respond_to("players") }
end