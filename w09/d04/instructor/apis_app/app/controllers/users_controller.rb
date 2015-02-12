class UsersController < ApplicationController
  # call authenticate unless we're visiting new or create to make a user
  before_action(:authenticate, :except => [:new, :create])
  # GET '/users/random?employed=true'
  def random
    url = "https://murmuring-lake-9194.herokuapp.com/users/random"
    user = HTTParty.get(url)
    # # return a random user hash
    # user = {
    #   first_name: Faker::Name.first_name,
    #   last_name: Faker::Name.last_name
    # }
    # if params[:employed] == 'true'
    #   job = {
    #     company_name: Faker::Company.name,
    #     job_title: Faker::Company.position
    #   }
    #   user.merge!(job)
    # end
    render(:json => user.to_json)
  end

  # use faker to send back a random first and last name
  # handle a query param for employed=true
  # and return back first and last name and company and title.

  def show
  end

end
