require 'spec_helper'

RSpec.describe Player do
  before(:each) do
    @player = Player.new('Miranda')
  end

  describe 'Board' do
    it 'exists' do
      expect(@player).to be_a(Object)
      expect(@player.name).to eq("Miranda")
      allow(@player).to receive(:gets).and_return("a\n") 
      expect { @player.guess }.to output("Miranda, guess a letter: ").to_stdout
    end
  end
end
