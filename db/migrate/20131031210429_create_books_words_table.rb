class CreateBooksWordsTable < ActiveRecord::Migration
  def change
    create_table :books_words_tables do |t|
    	t.integer :book_id
    	t.integer :word_id

    	t.timestamps
    end
  end
end
