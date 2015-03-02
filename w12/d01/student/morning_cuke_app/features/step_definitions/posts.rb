Given(/^there's a post titled "(.*?)"$/) do |post_title|
  @post = Post.create( title: post_title )
end

When(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click on "(.*?)"$/) do |link_name|
  click_on link_name
end

Then(/^I should see the "(.*?)" post$/) do |arg1|
  expect(page).to have_content arg1
end
