require('rspec')
require('definition')

describe(Definition) do
#   before() do
#     Definition.clear()
#   end

  describe('description') do
    it("returns definitions of the word") do
      test_definitions = Definition.new({:description => 'it is a vehicle', :id =>1})
      expect(test_definitions.description()).to(eq("it is a vehicle"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a definiton to the array.") do
      test_definitions = Definition.new({:description => 'it is a vehicle', :id =>1})
      test_definitions.save()
      expect(Definition.all()).to(eq([test_definitions]))
    end
  end







end
