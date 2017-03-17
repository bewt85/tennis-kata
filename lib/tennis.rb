class Tennis

  attr_reader :score

  def initialize
    @score = '0:0'
  end

  def player1_wins_a_point
    @score = '15:0'
  end

  def player2_wins_a_point
    @score = "0:15"
  end

end
