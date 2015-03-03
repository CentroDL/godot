@pending
Feature: Posts page

  Scenario: Viewing application's Posts page
    Given there's a post titled "Hello Cuke"
    When I am on the homepage
    And I click on "View Posts"
    Then I should see the "Hello Cuke" post
