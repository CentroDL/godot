class WelcomeController < ApplicationController
  def index
    @student = Student.new
  end
end
