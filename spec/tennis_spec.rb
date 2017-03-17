require 'tennis'

describe Tennis do
  let(:tennis) { subject }

  specify "players are love-all when game starts" do
    expect(tennis.score).to eq "0:0"
  end

  specify "player 1 wins a point" do
    tennis.player1_wins_a_point
    expect(tennis.score).to eq "15:0"
  end

  specify "player 1 wins 2 points in a row" do
    2.times { tennis.player1_wins_a_point }
    expect(tennis.score).to eq "30:0"
  end

  specify "player 2 wins 2 points in a row" do
    2.times { tennis.player2_wins_a_point }
    expect(tennis.score).to eq "0:30"
  end

  specify "player 2 wins a point" do
    tennis.player2_wins_a_point
    expect(tennis.score).to eq "0:15"
  end

end
