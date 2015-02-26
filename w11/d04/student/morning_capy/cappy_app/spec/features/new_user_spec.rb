# require 'rails_helper'

# xdescribe "the site" do
#   xdescribe "a new user visits the homepage" do

#     it "has a signup link" do
#       visit root_path
#       click_link "Sign up"
#       expect(page).to have_content "Please enter your name"
#       expect(current_path).to eq "/users/new"
#     end

#     xdescribe "creating a user" do
#       # given I've entered the correct info
#       # when I click on sign up
#       # then I should go to the homepage
#       # and I should see "Thanks for signing up!"
#       xdescribe "signing up with valid credentials" do
#         # uncomment out the code in spec/factories/user_factory
#         let(:user) { FactoryGirl.build(:user) }
#         it "takes us to the homepage and says thanks for signing up" do
#           sign_up(user)
#           expect(current_path).to eq root_path
#           expect(page).to have_content "Thanks for signing up!"
#         end
#       end

#       # shouldn't create user and should say "Please enter an email"
#       # if you get this working create a unit test on the model to test validation
#       xdescribe "signing up without an email" do
#         it "prohibits logging in" do
#           let(:user) { FactoryGirl.build(:user) }
#           sign_up(user)
#           expect(current_path).to eq users_path
#           expect(page).to have_content "Please enter an email"
#         end
#       end
#     end
#   end
# end

# def sign_up(user)
#   visit root_path
#   click_link "Sign up"
#   fill_in "Email", with: user.email
#   click_button "Sign Up!"
# end

# def login(user)
#   # all the steps to login
#   # visit the path
#   # click on login
#   # enter details
#   # click submit
# end
