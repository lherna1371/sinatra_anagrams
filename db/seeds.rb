require 'debugger'

f = File.open(File.expand_path("../words.txt", __FILE__))

f.each do |word|
  sorted = word.chomp.downcase.split('').sort.join('')
  # debugger
  Word.create!(:term => word.chomp, :organized => sorted, :word_length => word.chomp.length, :first_letter => sorted[0])
end

f.close
