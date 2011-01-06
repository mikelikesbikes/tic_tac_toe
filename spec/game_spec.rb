require 'spec_helper'

describe Game do
  subject { Game.new(player1, player2) }
  let(:player1) { Player.new }
  let(:player2) { Player.new }

  describe "initializing" do
    it "should have a board" do
      subject.board.should_not be_nil
    end

    it "should have two players" do
      subject.players.length.should == 2
      subject.players.include?(player1).should be_true
      subject.players.include?(player2).should be_true
    end

    it "should be turn 1" do
      subject.turn.should == 1
    end
  end

  describe "run" do

  end

  describe "run_turn" do
    before(:each) do
      player1.stub!(:move).and_return(5)
      subject.run_turn
    end

    it "should be turn 2" do
      subject.turn.should == 2
    end

    it "should place an X at square 5" do
      subject.board.squares[4].should == "X"
    end
  end
end