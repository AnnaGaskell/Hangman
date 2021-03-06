module HangmanDisplay
  INTRO = <<~'INTRO'
    
  -------------------------------------------------
      Welcome to Hangman.
      Spell your word correctly to save the man from his fate.
      --Hit Enter to resume a saved game otherwise --
      Press any other key to start new...
    -------------------------------------------------
  INTRO

  HANGMAN_ZERO = %q(
    _________
    |/      |
    |
    |
    |
    |
    |
    |\____
  )

  HANGMAN_ONE = %q{
    _________
    |/      |
    |      (_)
    |
    |
    |
    |
    |\____
  }
  HANGMAN_TWO = %q{
    _________
    |/      |
    |      (_)
    |       |
    |       |
    |
    |
    |\____
  }
  HANGMAN_THREE = %q{
    _________
    |/      |
    |      (_)
    |      \|
    |       |
    |
    |
    |\____
  }
  HANGMAN_FOUR = %q{
    _________
    |/      |
    |      (_)
    |      \|/
    |       |
    |
    |
    |\____
  }
  HANGMAN_FIVE = %q{
    _________
    |/      |
    |      (_)
    |      \|/
    |       |
    |      /
    |
    |\____
  }

  HANGMAN_SIX = %q{
    _________
    |/      |
    |      (_)
    |      \|/
    |       |
    |      / \
    |
    |\____
  }
end