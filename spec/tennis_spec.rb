require_relative "../tennis"

describe Tennis do
  specify 'players are love-all when game starts' do
    expect(subject.score).to eq '0:0'
  end
end

# love-all
#  
