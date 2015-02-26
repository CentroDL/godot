# require 'rails_helper'

# # feature is an alias of describe
# RSpec.feature 'Logging in', type: :feature do

#   # before the test create a user
#   background do
#     User.create({
#       fname: 'Meredith',
#       lname: 'Grey',
#       username: 'Doctor',
#       born_on: 'May 13, 1984',
#       password: 'applesauce',
#       password_confirmation: 'applesause'
#     })
#   end

#   # scenario is an alias of it
#   scenario 'User logs in with valid info' do
#     visit '/login'
#     fill_in 'Username', with: 'Doctor'
#     fill_in 'Password', with: 'applesauce'
#     click_button 'Sign In'

#     expect(page).to have_text('Welcome back, Doctor');
#   end

#   scenario 'User logs in with invalid info' do
#     visit '/login'
#     fill_in 'Username', with: 'Doctor'
#     fill_in 'Password', with: 'apelesace'
#     click_button 'Sign in'

#     expect(page).to have_text('Incorrect Login Information')
#   end
# end
