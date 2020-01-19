class UsersController < ApplicationController
  before_action:set_user,only: [:show,:update,:destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    binding.pry
    @user = User.find(params[:id])
    @user.update!(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy!
  end

  private
    def user_params
      params.require(:user).permit(:account, :name, :email)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
