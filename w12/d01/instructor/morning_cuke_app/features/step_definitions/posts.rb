# deep in the DB
Given(/^there's a post titled "(.*?)"$/) do |title|
  @post = Post.create(title: title)
end

# now the interaction starts
When(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click on "(.*?)"$/) do |link|
  click_on link
end

Then(/^I should see the "(.*?)" post$/) do |content|
  expect(page).to have_content @post.title
end
