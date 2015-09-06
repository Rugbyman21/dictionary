require('rspec')
require('definition')

describe(Definition) do
  before() do
    Definition.clear()
  end

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

  describe('.clear') do
    it("empties out all of the definition") do
      Definition.new({:description => "it is a vehicle", :id => "1"}).save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns  the definiton by its id number") do
      test_definitions = Definition.new({:description =>"it is a vehicle", :id => "1"})
      test_definitions.save()
      test_definitions2 = Definition.new({:description =>"it is a cup", :id => "2"})
      test_definitions2.save()
      expect(Definition.find(test_definitions.id())).to(eq(test_definitions))
    end
  end







end
