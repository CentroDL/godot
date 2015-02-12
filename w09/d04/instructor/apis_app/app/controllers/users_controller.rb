class UsersController < ApplicationController
  # GET '/users/random?employed=true'
  def random
    # return a random user hash
    user = {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    }
    if params[:employed] == 'true'
      job = {
        company_name: Faker::Company.name,
        job_title: Faker::Company.position
      }
      user.merge!(job)
    end
    render(:json => user.to_json)
  end

  # use faker to send back a random first and last name
  # handle a query param for employed=true
  # and return back first and last name and company and title.
end
