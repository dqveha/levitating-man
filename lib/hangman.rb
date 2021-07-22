class Hangman
  attr_accessor :puzzle, :puzzle_guess

  def initialize(puzzle)
    @puzzle = puzzle
    @puzzle_guess = []
    @tries_left = 8
    @letters_guessed_correctly = []
    @letters_guessed_wrong = []
  end

  def woah_dude(letter)
    if self.puzzle.index(letter) != nil
        index_of_letter = (0 ... self.puzzle.length).find_all { |index| self.puzzle[index,1] == letter}
    end
    index_of_letter.each { |index| self.puzzle_guess[index] = letter}
    # @puzzle_guess
  end

#   def check(letter)
#     if puzzle.includes?(letter)
#       @letters_guessed_correctly.push(letter)

#     else
#       @letters_guessed_wrong.push(letter)
#       @tries_left -= 1
#     end
#   end

#   def check_fail
#     if tries_left = 0
#       self.lose
#     end
#   end

#   def win
#     if @puzzle_split == @puzzle_guess
#       "You win!"
#     end
#   end
  
#   def lose
#     "You loooooose"
#   end
end

# temp = puzzle.delete(' ').split('')
# temp.each { |element| puts
#   if (!letters_guessed_correctly.join.include?element)
#     return false
#   end
# end
# }
# return true