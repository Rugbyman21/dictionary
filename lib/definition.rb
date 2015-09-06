class Definition
  attr_reader(:description, :id)

  @@definitions = []

  define_method(:initialize) do |attribute|
    @description = attribute.fetch(:description)
    @id = @@definitions.length().+(1)
  end

  define_singleton_method(:all) do
   @@definitions
 end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

  define_singleton_method(:find) do |id|
    found_definitions = nil
    @@definitions.each() do |definition|
      if definition.id().eql?(id)
        found_definitions = definition
      end
    end
    found_definitions
  end
end
