require 'rails_helper'

# feature is an alias of describe
RSpec.feature 'Validating Sign ups', :type => :feature do

  # scenario is an alias of it

  scenario "A user doesn't check terms of service", js: true do
    # You could implement with client-side validation with JavaScript
    # or by validating with your models and controllers
    # at this point we may want to write some unit tests on our model or in JS
    visit '/contract'
    within('#new-contract') do
      fill_in 'Name', with: 'Meredith Grey'
      fill_in 'Born On', with: 'May 13, 1977'
      click_button 'Sign Contract'
    end
    expect(page).to have_text('You must check the terms of service.')
  end

  scenario "A user then checks terms of service", js: true do
    visit '/contract'
    within('#new-contract') do
      fill_in 'Name', with: 'Meredith Grey'
      fill_in 'Born On', with: 'May 13, 1977'
      click_button 'Sign Contract'
    end
    check('I agree to the terms of service')
    expect(page).not_to have_content("You must check the terms of service.")
  end

  scenario "A user doesn't supply a name and birth date", js: true do
    visit '/contract'
    within('#new-contract') do
      check('I agree to the terms of service')
      click_button 'Sign Contract'
    end
    expect(page).to have_content "Fields can't be blank"
  end

  scenario 'A User signs with valid info' do

    visit 'contracts/new'
    within('#new-contract') do
      fill_in 'Name', with: 'Meredith Grey'
      fill_in 'Born On', with: 'May 13, 1984'
      check('I have read the Terms of Service')
      click_button 'Sign Contract'
    end
    expect(page).to have_text('Thanks for signing, ' + 'Meredith')
  end

end


