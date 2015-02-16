#      Prefix Verb   URI Pattern                 Controller#Action
#       books GET    /books(.:format)            books#index
#             POST   /books(.:format)            books#create
#    new_book GET    /books/new(.:format)        books#new
#   edit_book GET    /books/:id/edit(.:format)   books#edit
#        book GET    /books/:id(.:format)        books#show
#             PATCH  /books/:id(.:format)        books#update
#             PUT    /books/:id(.:format)        books#update
#             DELETE /books/:id(.:format)        books#destroy

class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.create book_params
    redirect_to book_path(book)
  end

  def show
    @book = Book.find params[:id]
  end

  def edit
    @book = Book.find params[:id]
  end

  def update
    book = Book.find params[:id]
    book.update book_params
    redirect_to book_path(book)
  end

  def destroy
    Book.destroy params[:id]
    redirect_to books_path
  end

  def book_params
    params.require(:book).permit(:title, :released_on, :genre, :author_id)
  end

end
