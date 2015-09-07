require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('lib/**/*.rb')

get('/') do
  @word = Word.all()
  erb(:index)
end

post('/new_word') do
  word_input = params.fetch('word_input')
  new_word = Word.new(word_input)
  new_word.save()
  @word = Word.all
  erb(:success)
end

get('/details/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:details)
end

post ("/details/:id") do
  @new_definition = Definition.new(params.fetch('definition_input'))
  @new_definition.save()
  @word = Word.find(params.fetch('word_id').to_i()).add_definition(@new_definition)
  erb(:success)
end
