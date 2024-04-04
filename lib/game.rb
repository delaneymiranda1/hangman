class Game
  attr_reader :player, :board, :max_attempts, :attempts, :game_over
  def initialize(player)
    @player = player
    @board = Board.new(select_word)
    @max_attempts = 6
    @attempts = 0
    @game_over = false
  end

  def play
    puts "Welcome to Hangman!"
    @board.display

    until @game_over
      guess = @player.guess
      check_guess(guess)
    end

    display_result
  end


  def select_word
    words = File.readlines('words.txt').map(&:chomp)
    words.sample
  end

  def check_guess(guess)
    if guess.length > 1
      check_word(guess)
    elsif @board.update_display(guess)
      puts "Correct guess!"
    else
      @attempts += 1
      if @attempts == @max_attempts - 1
        puts "Last attempt! Try to guess the word."
      else
        puts "Incorrect guess! Try again."
      end
    end

    @game_over = true if @board.all_guessed? || @attempts >= @max_attempts
    @board.display
  end

  def check_word(word_guess)
    if word_guess.downcase == @board.word
      puts "Congratulations! You guessed the word correctly."
      @game_over = true
    else
      puts "Incorrect guess! The word is not '#{word_guess}'."
      @attempts += 1
    end
  end

  def display_result
    if @board.all_guessed?
      puts "Congratulations! You guessed the word correctly."
    else
      puts "Sorry, you've run out of attempts. The word was #{@board.word}."
    end
  end
end