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

  specify "player 1 wins 3 points in a row" do
    3.times { tennis.player1_wins_a_point }
    expect(tennis.score).to eq "40:0"
  end

 specify "player 1 wins 4 points in a row" do
    4.times { tennis.player1_wins_a_point }
    expect(tennis.score).to eq "Player 1 wins"
  end

  specify "player 2 wins a point" do
    tennis.player2_wins_a_point
    expect(tennis.score).to eq "0:15"
  end

  specify "player 2 wins 2 points in a row" do
    2.times { tennis.player2_wins_a_point }
    expect(tennis.score).to eq "0:30"
  end

  specify "player 2 wins 3 points in a row" do
    3.times { tennis.player2_wins_a_point }
    expect(tennis.score).to eq "0:40"
  end

  specify "player 2 wins 4 points in a row" do
    4.times { tennis.player2_wins_a_point }
    expect(tennis.score).to eq "Player 2 wins"
  end

  xspecify "player 2 wins 5 points in a row" do
    4.times { tennis.player2_wins_a_point }
    expect( tennis.score ).to eq 'Game Over'
    expect{ tennis.player2_wins_a_point }.to raise_error 'Game Over'
  end

  specify "player 1 and 2 both win a point" do
    tennis.player1_wins_a_point
    tennis.player2_wins_a_point
    expect(tennis.score).to eq "15:15"
  end

  xspecify "player 2 and 1 both win a point" do
    tennis.player2_wins_a_point
    tennis.player1_wins_a_point
    expect(tennis.score).to eq "15:15"
  end
end
