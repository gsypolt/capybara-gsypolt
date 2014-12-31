def fill_out_location
  # Hard-code values and should use parameterization
  select('Business', from: 'Address_Type_Select')
  fill_in('Street', with: '7950 Jones Branch Dr')
  fill_in('City', with: 'McLean')
  select('VA', from: 'Region')
  fill_in('Postal_Code', :with => '22102')
end

def continue_button
  find_button('Continue').click
end

# Page Object - Readable Link
def click_mystore_change
  find(:css, '.qa-Mys_Change').click
end

# Navigation Steps
When(/^I click the Order Online tab$/) do
  click_link('Order Online')
  find('.Delivery').click
end

When(/^I click the Continue button$/) do
  continue_button
end

When(/^I click Future Carryout Order button$/) do
  pending # express the regexp above with the code you wish you had
end

# Change MY LOCATION and MY STORE Steps
When(/^I click Change My Location link$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click the Change My Store link$/) do
  click_mystore_change
  find(:xpath, "//div[@data-storeid='4348']//a[@data-type='Carryout']").click
end

# Validate
Then(/^I should see the Dominos Location Search page$/) do
  expect(page).to have_selector(:id, 'locationsSearchPage')
end

Then(/^I should see "(.*?)" selected in the order settings$/) do |my_location|
  page.has_content?(my_location)
end

# Location Form
When(/^I select "([^"]*)" from address type drop\-down$/) do |address_type|
  select(address_type, from: 'Address_Type_Select')
end

When(/^I enter "(.*?)" in the street address input field$/) do |street_address|
  fill_in('Street', with: street_address)
end

When(/^I enter "(.*?)" in the city input field$/) do |city|
  fill_in('City', with: city)
end

When(/^I select "(.*?)" from state drop\-down$/) do |state|
  select(state, from: 'Region')
end

When(/^I enter "(.*?)" in the zip code input field$/) do |zip|
  fill_in('Postal_Code', with: zip)
end

# Example of Page Object for Location Form
When(/^I fill out location search$/) do
  fill_out_location
end

