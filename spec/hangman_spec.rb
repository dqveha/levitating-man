require 'rspec'
require 'hangman'

describe '#Hangman' do

  describe('#initialize') do
    it("do test") do
      man = Hangman.new("hello world")
      expect(man).to(eq(man))
    end
  end
end