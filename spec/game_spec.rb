require 'game'

describe Game do
  let(:dave) { double :player, name: 'Dave' }
  let(:mittens) { double :player_2, name: 'Mittens' }
  subject(:game) { described_class.new(dave, mittens) }


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
      game.switch_turns
      expect(game.current_turn).to eq mittens
    end

    it 'second turn changes player' do
      game.switch_turns
      game.switch_turns
      expect(game.current_turn).to eq dave
    end
  end
end
