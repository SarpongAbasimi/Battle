require 'player'

RSpec.describe Player do
  let(:player) {described_class.new('name')}
  describe 'name' do
    it 'returns players name' do
      expect(player.name).to eq('name')
    end
  end
end