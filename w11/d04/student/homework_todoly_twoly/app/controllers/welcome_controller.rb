class WelcomeController < ApplicationController
  def index
    @tasks = Task.all.sort_by(&:created_at)
  end
end
