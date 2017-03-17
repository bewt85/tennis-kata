class Tennis

  attr_reader :score

  def initialize
    @score = "0:0"
  end

  def player1_wins_a_point
    player1_score = @score.match(/(\d+)\:/)[1].to_i
    @score = "#{player1_score+15}:0"
  end

  def player2_wins_a_point
    @score = case @score
    when "0:0"
      "0:15"
    when "0:15"
      "0:30"
    end
  end

end
