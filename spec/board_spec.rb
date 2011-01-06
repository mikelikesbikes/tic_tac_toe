require 'spec_helper'

describe Board do
  subject { Board.new(ui) }
  let(:ui) { Ui.new }

  it "should have 9 squares" do
    subject.squares.length.should == 9
  end

  it "should print the board to the viewport" do
    expected = " 1 | 2 | 3 \n---+---+---\n 4 | 5 | 6 \n---+---+---\n 7 | 8 | 9 "
    # ui.stub!(:output).with(expected)
    subject.display
    ui.output.should == expected
  end
end