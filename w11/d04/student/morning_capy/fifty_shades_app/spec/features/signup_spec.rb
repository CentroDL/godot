# require 'rails_helper'

# # feature is an alias of describe
# RSpec.feature 'Signups', type: :feature do
#   # scenario is an alias of it
#   scenario 'User signs contract with valid info' do

#     visit 'contracts/new'
#     fill_in 'First Name', with: 'Meredith'
#     fill_in 'Last Name', with: 'Grey'
#     fill_in 'Username', with: 'Doctor'
#     fill_in 'Born On', with: 'May 13, 1984'
#     check('I have read the Terms of Service')
#     click_button 'Sign Contract'

#     expect(page).to have_text('Congratulations!')
#   end

#   scenario 'Underage User signs contract with valid info' do

#     visit 'contracts/new'
#     fill_in 'First Name', with: 'Meredith'
#     fill_in 'Last Name', with: 'Grey'
#     fill_in 'Username', with: 'Doctor'
#     fill_in 'Born On', with: 'May 13, 2000'
#     check('I have read the Terms of Service')
#     click_button 'Sign Contract'

#     expect(page).to have_text('You must be over 18')
#   end

#   scenario 'User signs contract with invalid info' do

#     visit 'contracts/new'
#     fill_in 'First Name', with: 'Meredith'
#     fill_in 'Username', with: 'Doctor'
#     fill_in 'Born On', with: 'May 13, 2000'
#     fill_in 'Password', with: 'deligato'
#     check('I have read the Terms of Service')
#     click_button 'Sign Contract'

#     expect(page).to have_text('Incorrect or missing information')
#   end
# end
