class BookersController < ApplicationController
  def new
  end

  def create
    @bookers = Book.new(book_params)
    @bookers.user_id = current_user.id
    @bookers.save
    redirect_to booker_path
  end

  def index
    @user = current_user
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:Title, :Opinion)
  end
end
