class Definitions
attr_accessor(:id, :text)

  def initialize(attribute)
    @id = attribute.fetch(:id)
    @name = attribute.fetch(:name)
  end

  def self.all

  end

end
