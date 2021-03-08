class Player
  attr_accessor :life, :turn

  def initialize(oneOrTwo)
    @life = 3
    @turn = "Player", oneOrTwo.to_i
  end
end 