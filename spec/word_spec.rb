require('rspec')
require('word')

# describe(Word) do
#   before() do
#     Word.clear()
#   end

  describe('#name') do
    it("returns the name of the word") do
      test_word = Word.new({:name => "car", :id => "1"})
      expect(test_word.name()).to(eq("car"))
    end
  end






# end
