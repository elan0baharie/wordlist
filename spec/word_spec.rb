require('rspec')
require('pry')
require('word')



describe(Word) do
  before() do
    Word.clear()
  end

  describe('#word_text') do
    it("will return a words text output") do
      test_word = Word.new({:word_text => "Tree", :word_class => "Noun"})
      test_word.save()
      expect(test_word.word_text()).to(eq("Tree"))
    end
  end

  describe('#id') do
    it("will return a words id generated off initialization") do
      test_word = Word.new({:word_text => "Witch", :word_class => "Noun"})
      test_word.save()
      print test_word.id()
      expect(test_word.id()).to(be_an_instance_of(Fixnum))
    end
  end

  describe('.find') do
    it("will return a specified word class obj by its id property") do
      test_word1 = Word.new({:word_text => "Witch", :word_class => "Noun"})
      test_word1.save()
      test_word2 = Word.new({:word_text => "Tree", :word_class => "Noun"})
      test_word2.save()
      print test_word2.id()
      expect(Word.find(test_word2.id())).to(eq(test_word2))
    end
  end

end
