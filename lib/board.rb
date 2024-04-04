class Board
  def initialize(word)
    @word = word.downcase
    @displayed_word = "_" * @word.length
  end
end