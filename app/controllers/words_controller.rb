class WordsController < ApplicationController
  def create
    @word = Word.create(word_params)
    @book = Book.find(params[:book_id])

    @book.words << @word
    redirect_to author_book_path(@book.id)
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to author_book_path(@book.id)
  end

  def edit
    @word = Word.find(params[:id])
  end

  def update
    @word = Word.update(params[:id], word_params)
    redirect_to author_book_path(@book.id)
  end

  private

  def word_params
    params.require(:word).permit(:word, :book)
  end
end
