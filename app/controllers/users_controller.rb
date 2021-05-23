class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit

  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def user_params
<<<<<<< HEAD
    params.require(:user).permit(:name, :image)
=======
    params.require(:user).permit(:name, :profile_image)
>>>>>>> edit3
  end

end