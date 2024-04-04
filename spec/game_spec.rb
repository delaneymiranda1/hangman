require 'spec_helper'

RSpec.describe Game do
  before(:each) do
    @player = Player.new("Bob")
    @game = Game.new(@player)
    @board = Board.new("Periwinkle")
  end

  describe 'Game' do
    it 'exists' do
      expect(@game).to be_a(Object)
      expect(@game.player.name).to eq("Bob")
      expect(@game.board).to be_a(Board)
      expect(@game.max_attempts).to eq(6)
      expect(@game.attempts).to eq(0)
      expect(@game.game_over).to eq(false)
    end
  end

  describe "#play" do
    xit "starts the game" do
      expect(@game.play).to display "Welcome to Hangman!"
    end
  end

  describe "#check_guess" do
    xit 'sees if guess is right or wrong' do
      expect(@game.check_guess("p")).to eq(true)
      expect(@game.check_guess("x")).to eq(false)
    end
  end

  describe "#check_word" do
    xit 'sees if word is right or wrong' do
      expect(@game.check_word("periwinkle")).to eq(true)
      expect(@game.check_word("heuraohfjn")).to eq(false)
    end
  end

  describe "#display_result" do
    xit 'when all letters are guessed' do
      expect(@game.display_result).to eq(true)
      expect(@game.display_result).to eq(false)
    end
  end

end