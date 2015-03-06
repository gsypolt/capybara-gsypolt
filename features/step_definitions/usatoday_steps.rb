Given(/^I visit the USA Today home page$/) do
  visit('http://www.usatoday.com/life/books/best-selling/')
end

Then(/^Search by Author$/) do
  find(:css, "[data-value='author']").click
  fill_in('books-list-search', :with => 'Chris Kyle')
  click_button('Go')
  sleep 5
end