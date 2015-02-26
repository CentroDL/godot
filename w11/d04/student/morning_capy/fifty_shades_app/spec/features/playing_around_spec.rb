require 'rails_helper'

RSpec.describe "An introduction to Capybara" do

  it "interacts with the browser" do
    visit "/"
    expect(page).to have_content("Capy App!")
  end

  it "can interact via JavaScript", js: true do
    before(:each) do
      visit '/quiz'
      within("#quiz") { fill_in 'numbers', with: "-1, 4, 2, 8, 1, 20" }
      click_button "Sort"
    end

    it "removes the input field" do
      expect(page.has_no_field? 'numbers').to be(true)
      expect(page.has_no_button? 'sort').to be(true)
    end

    it "displays the numbers in ascending order" do
      expect(page).to have_content "-1, 1, 2, 4, 8, 20"
    end

  end

  it "can fill in forms" do
    visit 'users/new'
    fill_in 'First Name', with: 'Meredith'
    fill_in 'Last Name', with: 'Grey'
    fill_in 'Username', with: 'Doctor'
    fill_in 'Born On', with: 'May 13, 1984'
    check('I have read the Terms of Service')
    click_button 'Sign Contract'
    expect(page).to have_content "Hello, Meredith!"
  end

end
