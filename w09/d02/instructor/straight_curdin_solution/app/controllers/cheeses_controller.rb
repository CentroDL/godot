class CheesesController < ApplicationController
  def index
    @cheeses = Cheese.all
  end

  def new
    @cheese = Cheese.new
  end

  def show
    @cheese = Cheese.find(params[:id])
  end

  def create
    @cheese = Cheese.new(cheese_params)
    if @cheese.save
      redirect_to @cheese
    else
      flash[:error] = "You messed up, homes."
      redirect_to :back
    end
  end

  def edit
    @cheese = Cheese.find(params[:id])
  end

  def update
    @cheese = Cheese.find(params[:id])
    if @cheese.update_attributes(cheese_params)
      redirect_to @cheese
    else
      redirect_to edit_cheese_path
    end
  end

  def destroy
    @cheese = Cheese.find(params[:id])
    @cheese.destroy
    redirect_to '/cheeses'
  end

  private

    def cheese_params
      params.require(:cheese).permit(:name, :image_url, :milk_type)
    end

end
