class Game
  attr_accessor :board, :ui, :players, :turn

  def initialize(*players)
    self.players = players
    self.board = Board.new(ui)
    self.turn = 1
  end

  def run_turn
    # get current player's next move
    move = players[(turn - 1) % players.length].move
    # record the move in the board

    self.turn += 1
  end

end