require('rspec')
require('word')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#name') do
    it("returns the name of the word") do
      test_word = Word.new({:name => "car", :id => "1"})
      expect(test_word.name()).to(eq("car"))
    end
  end

  describe('#id') do
    it("returns the id of the word") do
      test_word = Word.new({:name => "car", :id => "1"})
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a word to the array of saves the word") do
      test_words = Word.new({:name => "car", :id => "1"})
      test_words.save()
      expect(Word.all()).to(eq([test_words]))
    end
  end

  describe('.clear') do
    it("empties out all of the saved words") do
      Word.new({:name => "car", :id => "1"}).save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.find') do
    it("return words by its id number") do
      test_words = Word.new({:name => "cars", :id => "1"})
      test_words.save()
      test_words2 = Word.new({:name => "cup", :id =>"2"})
      test_words.save()
      expect(Word.find(test_words.id())).to(eq(test_words))
    end
  end
end
