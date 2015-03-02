require 'rails_helper'

RSpec.describe "Visiting the site" do
  it "should demand that the user embark on a magical journey" do
    visit '/'
    expect( page ).to have_content("Get in my helicopter")
  end

  it "includes a link to sign a contract, because helicopter rides are dangerous" do
    visit '/'
    click_link "Get in my helicopter"
    expect(page.current_path).to eq("/contract")
  end
end
