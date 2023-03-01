class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @donuts = @user.donuts
    # raise
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to current_user
  end

  private

  def user_params
    params.require(:user).permit(:mouth_size, :photo)
  end
end
