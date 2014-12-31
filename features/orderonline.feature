Feature: Order Dominos Pizza Online
  We want to step through a simple scenario for training

Background:
  Given I visit the Dominos home page
@location
Scenario: Location Search for Dominos Pizza
  When I click the "Order Online" tab
  Then I should see the Dominos Location Search page

@form
Scenario: Fill out Location Search
  When I click the "Order Online" tab
  And I select "Business" from address type drop-down
  And I enter "7950 Jones Branch Dr" in the street address input field
  And I enter "McLean" in the city input field
  And I select "VA" from state drop-down
  And I click the Continue button
  And I click Future Carryout Order button
  Then I should see My Location selected in the order settings

 @order
 Scenario: Order Pizza
   When I click the ".*" tab
   And I fill out location search
   And I click the Continue button
   And I click the Change My Store link

  @outline
  Scenario Outline: Order Pizzas from Different Locations
    When I click the ".*" tab
    And I select "<address_type>" from address type drop-down
    And I enter "<street_address>" in the street address input field
    And I enter "<city>" in the city input field
    And I select "<state>" from state drop-down
    And I enter "<zip_code>" in the zip code input field
    And I click the Continue button
    Then I should see My Location selected in the order settings

  Examples:
    | address_type  | business_name | street_address        | suite-apt | city        | state | zip_code  |
    | Business      |               | 7950 Jones Branch Dr  |           | McLean      | VA    | 22102     |
    | Other         |               | 17376 Tedler Circle   |           | Round Hill  | VA    | 20141     |