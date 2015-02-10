class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find( params[:id] )
  end

  def new
    @user = User.new
  end

  def create
    # binding.pry
    #one way
      # new_user         = User.new
      # new_user.login   = params[:user][:login]
      # new_user.born_on = params[:user][:born_on]
      # new_user.save
      # redirect_to user_path(new_user.id)
    # or with create
      #new_user = User.create( login: params[:user][:login], born_on: params[:user][:born_on])
    #or whitelist
     # new_user = User.create( params.require(:user).permit(:login, :born_on))
     new_user = User.create user_params
     redirect_to user_path(new_user.id)
  end

  def user_params
    params.require(:user).permit(:login, :born_on)
  end

  def destroy
    User.destroy params[:id]
    redirect_to users_path
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find(params[:id])
    user.update( user_params )
    redirect_to user_path( user )
  end

end
