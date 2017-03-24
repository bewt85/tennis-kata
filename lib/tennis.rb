class Tennis

  attr_reader :score

  def initialize
    @score = "0:0"
  end

  def player1_wins_a_point
    player1_score, player2_score = @score.split(":").map(&:to_i)
    if player1_score == 40
      @score = "Player 1 wins"
      return
    end

    player1_score += player1_score <= 15 ? 15 : 10
    if player1_score == 40 && player2_score == 40
      @score = "deuce"
      return
    end

    @score = "#{player1_score}:#{player2_score}"
  end

  def player2_wins_a_point
    player1_score, player2_score = @score.split(":").map(&:to_i)

    if player2_score == 40
      @score = "Player 2 wins"
      return
    end

    player2_score = MAPPING[player2_score]
    if player1_score == 40 && player2_score == 40
      @score = "deuce"
      return
    end

    @score = "#{player1_score}:#{player2_score}"
  end

  MAPPING = {
    0 => 15,
    15 => 30,
    30 => 40,
  }

end
