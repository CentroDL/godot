class WelcomeController < ApplicationController
  def index
    redirect_to '/cheeses'
  end
end
