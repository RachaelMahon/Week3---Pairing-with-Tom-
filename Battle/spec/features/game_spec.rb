require 'views/game'

  describe Game do
    subject(:game) {Game.new('buddy','ginger')}
    let(:buddy) {double :player}
    let(:ginger) {double :player}


context 'Initializing game'
  it 'starts with two players' do
  expect(game.player1.name).to eq 'buddy'
  expect(game.player2.name).to eq 'ginger'
  end


context '#attack' do
  it 'can be attacked' do
    expect(ginger).to receive(:receive_damage)
    game.attack(ginger)
  end
end


context 'game switches turns after each attack' do
  it 'switches turns after attacks' do
    expect(ginger).to receive(:receive_damage)
    game.attack(ginger)
    game.switch_turn
    expect(game.not_turn).to eq game.player1
  end
end

end
