class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    # add something to the db
    user = User.create(user_params)

    redirect_to users_path
  end

  def destroy
    User.destroy(params[:id])
    redirect_to  users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)
  end

  def user_params
    params.require(:user).permit(:login, :born_on)
  end
end
