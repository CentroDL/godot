class CountriesController < ApplicationController

  def show
    @country = Country.find(params[:id])
    render json: @country
  end

end
