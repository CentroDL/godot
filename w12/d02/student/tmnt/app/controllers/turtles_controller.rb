class TurtlesController < ApplicationController

  def index
    @turtles = Turtle.all
    render json: @turtles
  end

  def show
    @turtle = Turtle.find(params[:id])
    render json: @turtle
  end

  def update
    @turtle = Turtle.find(params[:id])
    if @turtle.update_attributes(turtle_params)
      render json: @turtle
    else
      render status: 500
    end
  end

  def destroy
    @turtle = Turtle.find(params[:id])
    if @turtle.destroy
      render json: @turtle
    else
      render status: 500
    end
  end

  private

  def turtle_params
    params.require(:turtle).permit(:name, :eyeband_color, :weapon, :image_url)
  end

end
