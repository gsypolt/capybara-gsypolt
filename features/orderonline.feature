Feature: Order Dominos Pizza Online
  We want to step through a simple scenario for training

@location
Scenario: Location Search for Dominos Pizza
  Given I visit the Dominos home page
  When I click the "Order Online" tab
  Then I should see the Dominos Location Search page

@form
Scenario: Fill out Location Search
  Given I visit the Dominos home page
  When I click the "Order Online" tab
  And I select "Business" from address type drop-down
  And I enter "7950 Jones Branch Dr" in the street address input field
  And I enter "McLean" in the city input field
  And I select "VA" from state drop-down
  And I click the Continue button
  And I click Future Carryout Order button
  Then I should see My Location selected in the order settings

 @order @pause
 Scenario: Order Pizza
   Given I visit the Dominos home page
   When I click the ".*" tab
   And I fill out location search
   Then I click the Continue button