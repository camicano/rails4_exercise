class AuthorsController < ApplicationController
  def index
    @authors = Author.all

    @author = Author.new
  end

  def show
    @author = Author.find(params[:id])

    @books = @author.books

    @book = Book.new
  end

  def create
    @author = Author.create(author_params)

    redirect_to root_path
  end

  def destroy
    @author = Author.find(author_params)
    @author.destroy

    redirect_to root_path    
  end

  def edit
    @author = Author.find(params[:id])    
  end

  def update
    @author = Author.update(params[:id], author_params)

    redirect_to root_path    
  end

  private

  def author_params
    params.require(:author).permit(:name, :books)
  end

  def book_params
    params.require(:book).permit(:title, :author, :words)
  end
end

