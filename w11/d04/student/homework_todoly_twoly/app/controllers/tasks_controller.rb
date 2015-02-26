class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  def index
    @tasks = Task.all.sort_by(&:created_at)
    render json: @task
  end

  def show
    render json: @task
  end

  def create
    @task = Task.create(task_params)
    render json: @task
  end

  def update
    @task.update(task_params)
    render json: @task
  end

  # you'd definitely want to add some auth to things like this, otherwise you're
  #   open to the easiest attack around!
  def destroy
    @task.destroy
    head :no_content
  end

  private

  def set_task
    @task = Task.find_by(id: params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def task_params
    params.require(:task).permit(:description, :is_complete)
  end
end
