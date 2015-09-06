class Word
  attr_reader(:name, :id)

  @@words = []

  define_method(:initialize) do |attribute|
      @name = attribute.fetch(:name)
      # @vocab = []
      @id = @@words.length().+(1)

  end



end
