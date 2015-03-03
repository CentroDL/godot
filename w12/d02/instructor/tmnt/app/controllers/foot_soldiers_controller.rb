class FootSoldiersController < ApplicationController
  def index
    @foot_soldiers = FootSoldier.all
    render json: @foot_soldiers
  end

  def show
    @foot_soldier = FootSoldier.find(params[:id])
    render json: @foot_soldier
  end

  def update
    @foot_soldier = FootSoldier.find(params[:id])
    if @foot_soldier.update_attributes(foot_soldier_params)
      render json: @foot_soldier
    else
      render status: 500
    end
  end

  def create
    @foot_soldier = FootSoldier.new(foot_soldier_params)
    if @foot_soldier.save
      render json: @foot_soldier
    else
      render status: 500
    end
  end

  def destroy
    @foot_soldier = FootSoldier.find(params[:id])
    if @foot_soldier.destroy
      render json: @foot_soldier
    else
      render status: 500
    end
  end

  private

  def foot_soldier_params
    params.require(:foot_soldier).permit(:height_in_inches, :weight_in_pounds, :image_url)
  end
end
