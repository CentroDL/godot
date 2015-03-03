class RatsController < ApplicationController

  def show
    @rat = Rat.first
    render json: @rat
  end

  def update
    @rat = Rat.first
    if @rat.update_attributes(rat_params)
      render json: @rat
    else
      render status: 500
    end
  end

  private

  def rat_params
    params.require(:rat).permit(:name, :image_url, :age)
  end
end
