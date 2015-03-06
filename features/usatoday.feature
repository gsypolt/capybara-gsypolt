Feature: USA Today
  We want to step through a simple scenario for training

  Background:
    Given I visit the USA Today home page

  @books
  Scenario: Best Selling Books section
    Then Search by Author
