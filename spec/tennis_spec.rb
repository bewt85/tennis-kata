require_relative "../tennis"

describe Tennis do
  specify 'players are love-all when game starts' do
    expect(subject.score).to eq '0:0'
  end

  specify "player 1 wins a point" do
    subject.player1_wins_a_point
    expect(subject.score).to eq "15:0"
  end
end

# love-all
#  
