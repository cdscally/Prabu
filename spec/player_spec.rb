require 'player'

describe Player do

  it 'returns its name' do
    player = Player.new('Prabu')
    expect(player.name).to eq('Prabu')
  end

  it 'reduces hp when attacked' do
    player = Player.new('Colin')
    expect { player.reduce_hp }.to change { player.hp }.by(-10)
  end

end
