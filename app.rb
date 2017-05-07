require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')
require('pry')


get('/') do
  @words = Word.all()
  erb(:index)
end

post('/words') do
  text = params.fetch('wd-text')
  wd_class = params.fetch('wd-class')
  new_word = Word.new ({:word_text => text, :word_class => wd_class})
  new_word.save()
  erb(:success)
end

get('/words/:id/definitions') do
  @words = Word.all()
  @word = Word.find(params.fetch('id').to_i())
  erb(:word_defs)
end

post('words/:id/definitions') do
  user_text = params.fetch('def-text')
  new_defintion = Defintions.new({:text => user_text})
  new_defintion.save()
  @word = Words.find(params.fetch('id').to_i())
  @word.add_def(new_defintion)
  erb(:index)
end
