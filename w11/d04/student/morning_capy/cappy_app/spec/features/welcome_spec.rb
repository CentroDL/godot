require 'rails_helper'

describe "an intro to capybara" do

  # Remove the x to run the test
  it "interacts with the browser" do
    visit "/"
    expect(page).to have_content("Capy App!")
  end

  it "can click links" do
    visit "/"
    click_link("New Quiz")
    expect(page).to have_content("New Quiz Form")
    expect(current_path).to eq('/quiz/new')
  end

  it "can interact via JavaScript", js: true do
    visit "/"
    div = find('div#greeter')
    expect( div.text ).to eq("Hello")
    div.click
    expect( div.text ).to eq("Hello with JS")
  end

  describe "Taking a quiz" do

    before(:each) do
      @random_numbers = (-10..10).to_a.shuffle!.take(5)
      @sorted_numbers = @random_numbers.sort
      visit '/quiz/new'
      within("#quiz") { fill_in 'numbers', with: @random_numbers.join(", ") }
      click_button "sort"
    end

    it "has a text input where we can enter a string of numbers" do
      visit '/quiz/new'
      within("form#quiz") { expect(page).to have_css('input[name="numbers"]') }
      within("form#quiz") { expect(page).to have_css('button') }
    end

    describe "when I click the 'sort' button", js: true do

      xit "removes the input" do
        expect(page.has_no_field? 'numbers').to be true
        expect(page.has_no_button? 'sort').to be true
      end

      xit "displays the numbers in ascending order" do
        expect(page).to have_content @sorted_numbers.join(", ")
      end

    end

  end

end

# If you finish with these take a look at new_user_spec
