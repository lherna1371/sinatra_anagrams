class Word < ActiveRecord::Base
  # Remember to create a migration!

  scope :first_letter, ->(letter) { where("first_letter = ?", letter) }
  scope :letter_ct, ->(ct) { where("word_length = ?", ct) }
  scope :same_sort, ->(word) { where("organized = ?", word.sorted) }

  
end

class String
  def sorted
    self.chomp.downcase.split('').sort.join('')
  end
end
