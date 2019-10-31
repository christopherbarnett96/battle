require 'game'

describe Game do
  subject(:game) { described_class.new('Dave', 'Mittens') }
  let(:dave) { double :player }
  let(:mittens) { double :player }

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
end
