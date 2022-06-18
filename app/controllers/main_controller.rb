require_relative '../workers/base_worker_worker'
class MainController < ApplicationController

  #Sends list of books to the BookList action
  def bookList
    @books = Book.all

  end

  def index
    @books = Book.all

    @lel = current_user ? current_user.time_sheets : nil
  end

  #Sends the information of a specific book that the user selects in the bookList action
  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
  end
  
  def edit
  end

  #Links signed in user to the book that they wish to send to the cart
  #Updates checkin date in preperation for checkout
  def update 
    @book = Book.find(params[:id])
    if ! current_user
      redirect_to :controller => 'main', :action => 'bookList'
    elsif @book.update_attributes(params[:book])
      current_user.books << @book
      redirect_to :controller => 'main', :action => 'bookList'
    end 
  end

  def delete
  end

  def destroy
  end

end

