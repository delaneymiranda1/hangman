require 'spec_helper'

RSpec.describe Board do
  before(:each) do
    @board = Board.new
  end

  describe 'Board' do
    it 'exists' do
      expect(@board).to be_a(Object)
      expect(@board.word).to be_a(String)
      expect(@board.displayed_word).to include "_"
    end
  end
end