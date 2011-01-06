require 'spec_helper'

describe Board do
  subject { Board.new(ui) }
  let(:ui) { mock("ui") }

  it "should have 9 squares" do
    subject.squares.length.should == 9
  end

  describe "display" do
    it "should print the squares to the viewport" do
      expected = " 1 | 2 | 3 \n---+---+---\n 4 | 5 | 6 \n---+---+---\n 7 | 8 | 9 "
      ui.should_receive(:output).with(expected)
      subject.display
    end
  end

  describe "record_move" do
    it "should record a move given a marker and square" do
      subject.record_move(5, "X")
      subject.squares[4].should == "X"
    end

  end

end