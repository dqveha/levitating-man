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
      expect(man.puzzle_guess).to(eq(["h",nil,"l","l","o"]))
    end
  end

  describe('#win') do
    it("do win test") do
      man = Hangman.new("hi woo")
      man.woah_dude("h")
      man.woah_dude("i")
      man.woah_dude("w")
      man.woah_dude("o")
      
      expect(man.win).to(eq(true))
    end
  end

  describe('#lose') do
    it("do lose test") do
      man = Hangman.new("hi woo")
      8.times { man.check("z") }
      expect(man.check_fail).to(eq(true))
    end
  end
end