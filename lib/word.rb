class Word

  attr_accessor(:id, :word_text, :word_class, :definitions)

  @@all_words = []

  def intialize(attribute)
    @id = @@all_words.length() + 1
    @word_text = attribute.fetch(:word_text)
    @word_class = attribute.fetch(:word_class)
    @definitions = []
  end

  def self.all
    @@all_words
  end

  def save
    @@all_words.push(self)
  end

  def add_def(definition)
    @definitions.push(definition)
  end



end
