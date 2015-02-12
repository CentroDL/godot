class SessionsController < ApplicationController
  def new
  end
  def create
    # handle the lookup and auth
    email = params[:email]
    pass = params[:password]
    user = User.find_by({email: email})
    if user && user.authenticate(pass)
      session[:user_id] = user.id
      redirect_to '/home'
    else
      redirect_to '/login'
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
