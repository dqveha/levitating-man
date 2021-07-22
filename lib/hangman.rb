class Hangman
  attr_reader :puzzle
  attr_accessor :puzzle_guess, :tries_left, :letters_guessed_correctly, :letters_guessed_wrong, :puzzle_split, :puzzle_without_space

  def initialize(puzzle)
    @puzzle = puzzle
    @puzzle_without_space = @puzzle.gsub(' ', '')
    @puzzle_split = @puzzle_without_space.split('')

    @puzzle_guess = []
    @tries_left = 8
    @letters_guessed_correctly = []
    @letters_guessed_wrong = []
  end

  def woah_dude(letter)
    if self.puzzle_without_space.index(letter) != nil
        index_of_letter = (0 ... self.puzzle_without_space.length).find_all { |index| self.puzzle_without_space[index,1] == letter}
    end
    index_of_letter.each { |index| self.puzzle_guess[index] = letter}
  end

  def check(letter)
    if puzzle.includes?(letter)
      @letters_guessed_correctly.push(letter)
    else
      @letters_guessed_wrong.push(letter)
      @tries_left -= 1
    end
  end

  def check_fail
    if tries_left = 0
      self.lose
    end
  end

  def win
    if self.puzzle_split == self.puzzle_guess
      true
    else
      false
    end
  end
  
  def lose
    "You loooooose"
  end
end

