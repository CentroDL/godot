class WelcomeController < ApplicationController
  def index
    redirect_to '/tasks'
  end
end
