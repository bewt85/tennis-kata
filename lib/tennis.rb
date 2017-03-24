class Tennis

  attr_reader :score

  def initialize
    @score = "0:0"
  end

  def player1_wins_a_point
    player1_score = @score.match(/(\d+)\:/)[1].to_i
    increment = player1_score <= 15 ? 15 : 10
    @score = "#{player1_score+increment}:0"
  end

  def player2_wins_a_point
    @score = case @score
    when "0:0"
      "0:15"
    when "0:15"
      "0:30"
    when "0:30"
      "0:40"
    when "0:40"
      "Player 2 wins"
    end
  end

end
