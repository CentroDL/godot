require 'rails_helper'

RSpec.describe "Visiting the site" do
  it "includes a link to sign the contract" do
    visit '/'
    click_link "Get in my helicopter"
    expect(page.current_path).to eq("/contract")
  end
end
