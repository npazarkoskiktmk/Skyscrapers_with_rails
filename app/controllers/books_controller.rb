class BooksController < ApplicationController
  before_action :find_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: "New book has been added!"
    else
      render 'new'
    end
  end

  def edit
  end


  def update
    if @book.update(book_params)
      redirect_to books_path
    else
      render 'edit'
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :author, :year)
  end

  def find_book
    @book = Book.find(params[:id])
  end
end
