class WelcomeController < ApplicationController

  def index
    @countries = Country.all
  end

end

