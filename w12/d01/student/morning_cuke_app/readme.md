# Cucumber and Regular Expressions

!:image](http://www.brightbluegorilla.com/LoseWithEnglish-CucumberEyes.jpg)

[Cucumber is a tool for running automated tests written in plain language. Because they're written in plain language, they can be read by anyone on your team. Because they can be read by anyone, you can use them to help improve communication, collaboration and trust on your team.](https://github.com/cucumber/cucumber)

Cucumber Tests begin as plain text features written in "Gherkin"

Take a look at `features/home_page.feature`

> Features should be written in `features` with the file extension `.features`

```
Feature: Home Page
  Scenario: Visiting the Home Page
    Given it's Week 12
    When I visit the home page
    Then I should see "Welcome to Week 12"

```

The only syntax is `Feature`, `Scenario`, `Given`, `When`, `Then`.

Once a feature is written, we run `rake cucumber` to generate step_definitions

> A Step Definition is a small piece of code with a pattern attached to it. Cucumber executes steps attached to a Scenario.

Run `rake cucumber` and view the output.

You should see some output like this:

```
Given(/^it's Week (\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I visit the home page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

```

# How did Cucumber generate the Step Defintions?

Cucumber parses a string like `"Given it's Week 12"` and uses [Regular Expressions](http://ruby-doc.org//core-2.2.0/Regexp.html) to create `Given(/^it's Week (\d+)$/)`

Check [rubular.com](http://rubular.com/) for a way to test writing Regular Expressions. 

## Use the Rubular Quick Reference

What do all the characters below do?

`/^it's Week (\d+)$/`

`/^I should see "(.*?)"$/`

## Back to Cucumber

> Cucumber's step definition output isn't saved to a file. Instead we need to copy it to a new ruby file inside `features/step_definitions`

Copy the output into a file called `features/step_definitions/home_page.rb`

We can replace all the "pending" portions with Rspec and Capybara

> Cucumber turns each Regex Capture Group into a block argument, which we can rename to be more explicit.

```rb
# features/step_definitions/home_page.rb
Given(/^it's Week (\d+)$/) do |week_number|
  # Saving the argument to an instance variable 
  # so we can use it in another step
  @week = week_number
end

When(/^I visit the home page$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |message|
  expect(page).to have_content(message) 
end
```

Now rerun `rake cuke` to see Cucumber try and run the new step definitions.

Now we just need to write the code to make our tests pass.

# Next

Try creating a `posts.feature` with the text below

```
@pending
Feature: Posts page

  Scenario: Viewing application's Posts page
    Given there's a post titled "Hello Cuke"
    When I am on the homepage
    And I click on "View Posts"
    Then I should see the "My first" post
```

The `Given` section will require creating a new Post in ActiveRecord

```
@javascript
Feature: Validating Phone Numbers

  Scenario: entering a valid number with dashes
    Given a user enters a 7 digit number
    When they click validate
    Then it should say "Valid Number"    

  Scenario: entering a valid number with spaces
    Given a user enters a 7 digit number
    When they click validate
    Then it should say "Valid Number"
```

The `@javascript` tells Cucumber to run the tests with Selenium-Web Driver and use JavaScript.

# This app was already set up using the steps below

Add the following Gems to your Gemfile.

```
  gem 'rspec-rails'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'selenium-webdriver'
```

Configure rspec

```sh
$ rails generate rspec:install
      create  .rspec
      create  spec
      create  spec/spec_helper.rb
      create  spec/rails_helper.rb
```

Configure Cucumber

```sh
$  rails generate cucumber:install
      create  config/cucumber.yml
      create  script/cucumber
       chmod  script/cucumber
      create  features/step_definitions
      create  features/step_definitions/.gitkeep
      create  features/support
      create  features/support/env.rb
       exist  lib/tasks
      create  lib/tasks/cucumber.rake
        gsub  config/database.yml
        gsub  config/database.yml
       force  config/database.yml
```


Features are written inside of `/features` with the file extension .feature



```
Feature: Name of Feature

  Scenario: The Action
    Given the setup
    When things hapen
    Then this should be
```

```
'campFire'.split(/(?=[A-Z])/).join('_').downcase
```

## Resources

- http://rubular.com/
- http://blog.codinghorror.com/regex-use-vs-regex-abuse/
- http://ruby-doc.org//core-2.2.0/Regexp.html
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions
- https://cukes.info/

"My name is Steven. I am 27 years old."


