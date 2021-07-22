require 'rspec'
require 'hangman'

describe '#Hangman' do

  describe('#initialize') do
    it("do test") do
      man = Hangman.new("hello world")
      expect(man).to(eq(man))
    end
  end

  describe('#woah_dude') do
    it("do test") do
      man = Hangman.new("hello")
      man.woah_dude("h")
      man.woah_dude("l")
      man.woah_dude("o")
      expect(man.puzzle_guess).to(eq([nil,nil,"l","l","o"]))
    end
  end
end