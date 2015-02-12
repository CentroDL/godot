class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def show
    @band = Band.find params[:id]
  end

  def new
    @band = Band.new
  end

  def create
    band = Band.create band_params
    redirect_to band_path(band)
  end

  def band_params
    params.require(:band).permit(:name, :genre, :has_explicit_lyrics)
  end

end
