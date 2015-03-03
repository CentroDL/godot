class VillainsController < ApplicationController

  def index
    @villains = Villain.all
    render json: @villains
  end

  def show
    @villain = Villain.find(params[:id])
    render json: @villain
  end

  def update
    @villain = Villain.find(params[:id])
    if @villain.update_attributes(villain_params)
      render json: @villain
    else
      render status: 500
    end
  end

  def destroy
    @villain = Villain.find(params[:id])
    if @villainvillain.destroy
      render json: @villain
    else
      render status: 500
    end
  end

  private

  def villain_params
    params.require(:villain).permit(:name, :species, :superpower)
  end

end
