class CountriesController < ApplicationController

  def show
    @country = Country.find(params[:id])
    render json: @country
  end

  def update
    @country = Country.find params[:id]
    @country.update country_params

    render json: @country
  end

  private

  def country_params
    params.require(:country).permit(
      :name,
      :language,
      :area_in_sq_km,
      :annihilated,
      :ally)
  end

end
