def fill_out_location
  select('Business', from: 'Address_Type_Select')
  fill_in('Street', with: '7950 Jones Branch Dr')
  fill_in('City', with: 'McLean')
  select('VA', from: 'Region')
end

def continue_button
  find_button('Continue').click
end

When(/^I click the "(.*?)" tab$/) do |tab|
  click_link('Order Online')
end

When(/^I click Change My Location link$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the Dominos Location Search page$/) do
  expect(page).to have_selector(:id, 'locationsSearchPage')
end

When(/^I select "(.*?)" from address type drop\-down$/) do |address_type|
  select('Business', from: 'Address_Type_Select')
end

When(/^I enter "(.*?)" in the street address input field$/) do |street_address|
  fill_in('Street', with: '7950 Jones Branch Dr')
end

When(/^I enter "(.*?)" in the city input field$/) do |city|
  fill_in('City', with: 'McLean')
end

When(/^I select "(.*?)" from state drop\-down$/) do |state|
  select('VA', from: 'Region')
end

When(/^I click the Continue button$/) do
  continue_button
  sleep 3
end

When(/^I click Future Carryout Order button$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see My Location selected in the order settings$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I fill out location search$/) do
  fill_out_location
end
