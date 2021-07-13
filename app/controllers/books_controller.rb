class BooksController < ApplicationController
   def index
    @books = Book.all
   end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
    redirect_to book_path(book.id)
    flash[:notice]='Book was successfully created.'
    end
  end
  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
   @book.update(book_params)
   redirect_to book_path(@book)
   flash[:notice]='Book was successfully created.'
  end

  def destroy
    book =Book.find(params[:id])
    book.destroy
    redirect_to books_path
    flash[:notice]='Book was successfully created.'
  end

  private
  def book_params
    params.permit(:title, :body)
  end
end