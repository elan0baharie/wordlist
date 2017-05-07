class Definitions
  attr_accessor(:id, :text)

  @@all_definitions = []

  def initialize(attribute)
    @id = @@all_definitions.length() + 1
    @text = attribute.fetch(:text)
  end

  def self.all
    @@all_definitions
  end

  def save
    @@all_definitions.push(self)
  end

  def self.clear
    @@all_definitions = []
  end

  def find(desired_id)
    found_def = nil
    @@all_definitions.each() do |definition|
      if definition.id().eql?(desired_id)
        found_def = definition
      end
    end
    found_def
  end
end
