class Board
  attr_accessor :ui, :squares

  def initialize(ui)
    self.ui = ui
    self.squares = (0...9).to_a
  end

  def display
    [squares.slice(0..2), squares.slice(3..5), squares.slice(6..8)]
    ui.output [[1, 2, 3],[4, 5, 6],[7, 8, 9]].collect { |row| row.collect{ |i| " #{i} "}.join("|")}.join("\n---+---+---\n")
  end

  def record_move(pos, marker)
    squares[pos - 1] = marker
  end

end