class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :term
      t.string :organized
      t.integer :word_length
      t.string :first_letter
    end
  end
end
