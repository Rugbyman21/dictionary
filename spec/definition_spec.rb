require('rspec')
require('word')
require('definition')

describe(Definition) do
  describe('#definition') do
    it('returns definition of word') do
      new_definition = Definition.new({:definition => 'To much stuff to do, but not enough time to get it all done'})
      expect(new_definition.definition()).to(eq('To much stuff to do, but not enough time to get it all done'))
    end
  end
end
