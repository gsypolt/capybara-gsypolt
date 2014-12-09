When /^I visit the home page$/ do
  visit('https://order.dominos.com/en/')
end

Then /^I should see the Dominos home page$/ do
   page.should have_selector(:id,'homePage')
end
