class ReportersController < ApplicationController

  def show
    @reporter = Reporter.first
    render json: @reporter
  end

  def update
    @reporter = Reporter.first
    if @reporter.update_attributes(reporter_params)
      render json: @reporter
    else
      render status: 500
    end
  end

  private

  def reporter_params
    params.require(:reporter).permit(:name, :image_url)
  end

end
