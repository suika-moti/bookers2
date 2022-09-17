class BookersController < ApplicationController
  def new
    @bookers = Book.new(book_params)
  end

  def create
    @bookers = Book.new(book_params)
    @bookers.user_id = current_user.id
    @bookers.save
    redirect_to booker_path(@bookers)
  end

  def index
    @user = current_user
    @bookers = Book.page(params[:page])
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
