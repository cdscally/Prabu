require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  it 'initialises with two arguments' do
    expect(game).to be_an_instance_of(Game)
  end

  it 'creates instance of player class' do
    expect(game.player_1).to be_an_instance_of(Player)
    expect(game.player_2).to be_an_instance_of(Player)
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1.name).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2.name).to eq player_2
    end
  end

  describe '#attack' do
    it 'attacks a player' do
      expect(game.player_2).to receive(:reduce_hp)
      game.attack(game.player_2)
    end
  end

  describe '#switch' do
    it 'switches the active player' do
      expect{ game.switch }.to change{ game.active_player }.from(game.player_1).to(game.player_2)
    end
  end

end
