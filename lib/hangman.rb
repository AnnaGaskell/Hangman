require_relative 'display'

class Computer
  include HangmanDisplay
  attr_reader :word, :lives, :word_guessed, :word_dashes, :incorrect_guesses

  def initialize(word = choose_word, incorrect_guesses = [], word_dashes = '_' * word.length, lives = 6, word_guessed = false)
    @word = word
    @incorrect_guesses = incorrect_guesses
    @word_dashes = word_dashes
    @lives = lives
    @word_guessed = word_guessed
  end

  def choose_word
    word_list = IO.readlines('dictionary.txt')
    word_list.each(&:strip!).select { |word| word.length.between?(5, 12) }
    word_list[rand(0..word_list.length)]
  end

  def display(lives)
    hangman_diagram(lives)
    puts "   #{@word_dashes.split('').join(' ')}"
    puts "\n    Incorrect guesses: #{@incorrect_guesses}\n\n"
  end

  def check_guess(guess)
    if @word.include?(guess)
      @word.each_char.with_index do |char, i|
        @word_dashes[i] = char if char == guess
      end
    else
      @incorrect_guesses.push(guess)
      @lives -= 1
    end
    @word_guessed = true unless @word_dashes.include?('_')
  end

  def hangman_diagram(lives)
    case lives
    when 6
      puts HangmanDisplay::HANGMAN_ZERO
    when 5
      puts HangmanDisplay::HANGMAN_ONE
    when 4
      puts HangmanDisplay::HANGMAN_TWO
    when 3
      puts HangmanDisplay::HANGMAN_THREE
    when 2
      puts HangmanDisplay::HANGMAN_FOUR
    when 1
      puts HangmanDisplay::HANGMAN_FIVE
    when 0
      puts HangmanDisplay::HANGMAN_SIX
    end
  end
end
