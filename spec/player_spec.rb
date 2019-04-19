require 'player'

RSpec.describe Player do
  let(:player1) {described_class.new('name')}
  let(:player2) {described_class.new('name2')}
  describe 'name' do
    it 'returns players name' do
      expect(player1.name).to eq('name')
    end

    describe 'attack' do
      it 'reduces players HP by 10' do
      expect{ player1.attack(player2) }.to change{ player2.HP }.by -100
      end
    end
  end
end
