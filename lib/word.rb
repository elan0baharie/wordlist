class Word

  attr_accessor(:id, :word_text, :word_class, :definitions)

  @@all_words = []

  def initialize(attribute)
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

  def self.clear
    @@all_words = []
  end

  def self.find(id)
    found_word = nil
    @@all_words.each() do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end
end
