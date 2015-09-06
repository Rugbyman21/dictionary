require('rspec')
require('definition')

describe(Definition) do
#   before() do
#     Definition.clear()
#   end

  describe('description') do
    it("returns definitions of the word") do
      test_definitions = Definition.new(:description => 'it is a vehicle')
      expect(test_definitions.description()).to(eq("it is a vehicle"))
    end
  end





end
