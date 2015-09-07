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
  @word = params.fetch('word_input')
  @word = Word.new({:word => @word})
  @word.save()
  @word = Word.all
  erb(:success)
end

# get('/details/:id') do
#   @word = Word.find(params.fetch('id').to_i())
#   erb(:details)
# end
#
# post ("/details/:id") do
#   @definition = Definition.new(params.fetch('definition_input'))
#   @definition.save()
#   @word_id = Word.find(params.fetch('word_id').to_i()).add_definition(@definition_input)
#   erb(:success)
# end
