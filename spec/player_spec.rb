require 'spec_helper'

RSpec.describe Player do
  before(:each) do
    @player = Player.new(name: "Miranda")
  end

  describe 'Board' do
    it 'exists' do
      expect(@player).to be_a(Hash)
      expect(@player.name).to eq("Miranda")
      expect(@player.guess).to include ("Miranda, guess a letter: ")
    end
  end
end
