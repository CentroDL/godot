Given(/^it's Week (\d+)$/) do |week_number|
  @week = week_number
end

When(/^I visit the home page$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |week_message|
  expect(page).to have_content(week_message)
end
