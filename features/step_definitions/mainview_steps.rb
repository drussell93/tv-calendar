When(/^I go to index.html.haml$/) do
  visit root_path
end

Then(/^I should see the calendar$/) do
  expect(page).to have_content("Sunday")
end
