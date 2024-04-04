class Board
  attr_reader :word, :displayed_word
  def initialize(word)
    @word = word.downcase
    @displayed_word = "_ " * @word.length
  end

  def display
    puts "Hidden word: #{@displayed_word}"
  end

  def update_display(guess)
    found = false
    @word.chars.each_with_index do |letter, index|
      if letter == guess
        @displayed_word[index] = letter
        found = true
      end
    end
    found
  end

  def all_guessed?
    !@displayed_word.include?('_')
  end
end