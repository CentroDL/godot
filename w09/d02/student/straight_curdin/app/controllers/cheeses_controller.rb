class CheesesController < ApplicationController
  def index
    @cheeses = Cheese.all
  end

  def show
    @cheese = Cheese.find params[:id]
  end

  def new
    @cheese = Cheese.new
  end

  def create
    new_cheese = Cheese.create cheese_params
    redirect_to cheese_path(new_cheese.id)
  end

  def cheese_params
    params.require(:cheese).permit(:name, :milk_type, :image_url, :description)
  end

end
