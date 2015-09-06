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

  # define_method(:save) do
  #   @@definitions.push(self)
  # end

end
