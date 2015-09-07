require('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#name') do
    it("returns the name of the word") do
      test_word = Word.new({:word => "car", :id => "1"})
      expect(test_word.word()).to(eq("car"))
    end
  end

  describe('#id') do
    it("returns the id of the word") do
      test_word = Word.new({:word => "car", :id => "1"})
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
      test_words = Word.new({:word => "car", :id => "1"})
      test_words.save()
      expect(Word.all()).to(eq([test_words]))
    end
  end

  describe('.clear') do
    it("empties out all of the saved words") do
      Word.new({:word => "car", :id => "1"}).save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#add_definition') do
    it('adds a new definition to a submitted word') do
      test_word = Word.new({:word => "car"})
      test_definitions = Definition.new({:description => "cute and cuddly feline"})
      test_word.add_definition(test_definitions)
      expect(test_word.definitions()).to(eq([test_definitions]))
    end
  end

  describe('.find') do
    it("return words by its id number") do
      test_words = Word.new({:word => "cars", :id => "1"})
      test_words.save()
      test_words2 = Word.new({:word => "cup", :id =>"2"})
      test_words.save()
      expect(Word.find(test_words.id())).to(eq(test_words))
    end
  end
end
