class Definition
  attr_reader(:description)

  @@definitions = []

  define_method(:initialize) do |attribute|
    @description = attribute.fetch(:description)
    # @type = attribute.fetch(:type)
    # @id = @@definitions.length().+(1)
  end

end
