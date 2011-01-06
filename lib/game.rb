class Game
  attr_accessor :board, :ui, :players, :turn

  def initialize(*players)
    self.players = players
    self.board = Board.new(ui)
    self.turn = 1
  end

  def run_turn
    board.record_move(next_move, "X")

    self.turn += 1
  end

  private
  def next_move
    players[(turn - 1) % players.length].move
  end

end