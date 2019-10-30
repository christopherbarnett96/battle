require './player.rb'

describe Player do
  it 'returns name' do
    player = Player.new('Dave')
    expect(player.name).to eq 'Dave'
  end
end
