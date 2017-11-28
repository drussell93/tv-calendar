When(/^I go to index.html.haml$/) do
  visit root_path
end

Then(/^I should see the calendar$/) do
  page.find(".calendar")
end
