require 'player'

  describe Player do
    subject(:buddy) {Player.new('Buddy')}
    subject(:ginger_cat) {Player.new('ginger_cat')}

    describe '#name' do
      it 'returns the name' do
        expect(buddy.name).to eq 'Buddy'
      end
    end

    context '#hit_points' do
      it 'returns the hit points' do
        expect(buddy.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end

    context '#attack' do
      it 'can be attacked' do
        expect(ginger_cat).to receive(:receive_damage)
        buddy.attack(ginger_cat)
      end
    end

    context '#receive_damage' do
    it 'reduces hit points when attacked' do
      expect{buddy.receive_damage}.to change{buddy.hit_points}.by(-10)
    end
  end

end
