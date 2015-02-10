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

  def destroy
    Cheese.destroy params[:id]
    redirect_to cheeses_path
  end

  def edit
    @cheese = Cheese.find params[:id]
  end

  def update
    updated_cheese = Cheese.find params[:id]
    updated_cheese.update cheese_params
    redirect_to cheese_path( updated_cheese )
  end


end
