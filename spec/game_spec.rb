require 'game'

describe Game do
  subject(:game) { described_class.new('Dave', 'Mittens') }
  let(:dave) { double :player, name: 'Dave' }
  let(:mittens) { double :player, name: 'Mittens' }

  before do (:each)
    allow(mittens).to receive(:receive_damage)
    allow(dave).to receive(:receive_damage)
  end

  describe '#attack' do

    it 'damages the player' do
      expect(mittens).to receive(:receive_damage)
      game.attack(mittens)
    end
  end

  context '#start game' do

    it 'starts a game with a 1st player' do
      expect(game.player_1.name).to eq 'Dave'
    end

    it 'starts a game with a 2nd player' do
      expect(game.player_2.name).to eq 'Mittens'
    end
  end

  context '#turns' do

    it 'switches turn after first turn' do
      game.attack(mittens)
      expect(game.current_turn).to eq 'Mittens'
    end

    it 'second turn changes player' do
      game.attack(mittens)
      game.attack(dave)
      expect(game.current_turn).to eq 'Dave'
    end
  end
end
