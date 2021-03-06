class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(id: current_user),notice: 'The post was successfully！！'
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @book_s = Book.where(user_id:@user.id)
    @books = Book.all
  end

  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render "edit"
    else
      redirect_to user_path(id: current_user)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id), notice: 'You have successfully changed your profile！！'
    else
      render :edit
    end
  end



  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end