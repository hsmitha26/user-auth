class UsersController < ApplicationController

  def new
    @users = User.new
  end

  def create
    users = User.new(user_params)
    users.save
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
