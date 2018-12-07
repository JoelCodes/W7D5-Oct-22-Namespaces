class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new user_params
    @user.is_admin = false
    if @user.save
      redirect_to :users
    else
      redirect_to :users, notice: 'Boo!'
    end
  end

  private
  def user_params
    params.require(:user)
      .permit(:name, :email, :password, :password_confirmation, :name)
  end
end
