require('rspec')
require('pry')
require('word')



describe(Words) do
  describe('#word_text') do
    it("will return a words text output") do
      test_word = Words.new({:word_text => "Tree", :word_class => "Noun"})
      test_word.save()
      expect(test_word.word_text()).to(eq("Tree"))
    end
  end
end
