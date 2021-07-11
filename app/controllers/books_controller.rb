class BooksController < ApplicationController
  def index
    @books = Book.all

  end

  def show
    @book = Book.find(params[:id])

  end

  def new
  end

  def edit
  end

private
def book_params
   paramas.require(:blog).permit(:title, :body)
end

end
