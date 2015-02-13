class WelcomesController < ApplicationController
  def index
    @student = Student.new
    @houses = House.all
  end
end
