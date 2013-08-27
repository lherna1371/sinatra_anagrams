require 'debugger'

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  @word = params[:user_input]
  redirect "/#{@word}" 
end

get '/:word' do
  our_word = params[:word]
  sorted = our_word.chomp.downcase.split('').sort.join('')
  @anagrams = Word.same_sort(our_word)
  erb :anagrams
end
