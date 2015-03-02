Feature: Home Page
  Scenario: Visiting the Home Page
    Given it's Week 12
    When I visit the home page
    Then I should see "Welcome to Week 12"
