Feature: Search for Gannett on Google.com
  We want to step through a simple scenario for training

Scenario: Check the Google.com home page
  When I visit the home page
  Then I should see the Google search

Scenario: Search for Gannett
  Given I am on the Google.com home page
  When I search for "Gannett"
  Then Gannett search results are returned
