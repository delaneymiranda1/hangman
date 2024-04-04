require 'spec_helper'

RSpec.describe Board do
  before(:each) do
    @board = Board.new("Periwinkle")
  end

  describe 'Board' do
    it 'exists' do
      expect(@board).to be_a(Object)
      expect(@board.word).to be_a(String)
      expect(@board.word).to eq("periwinkle")
      expect(@board.displayed_word).to eq("_ _ _ _ _ _ _ _ _ _ ")
    end
  end

  describe "#display" do
    it "displays the hidden word" do
      expect { @board.display }.to output("Hidden word: _ _ _ _ _ _ _ _ _ _ \n").to_stdout
    end
  end

  describe "#update_display" do
    it "guess correct- updates the displayed word and returns true" do
      expect(@board.update_display("p")).to eq(true)
      expect(@board.displayed_word).to eq("p _ _ _ _ _ _ _ _ _ ")
    end
    
    it "wrong guess" do
      expect(@board.update_display("x")).to eq(false)
      expect(@board.displayed_word).to eq("_ _ _ _ _ _ _ _ _ _ ")
    end
  end
end
