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
    @book = Book.find params[:id]
  end

  def create

  end

  def show
    @book = Book.find params[:id]
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
