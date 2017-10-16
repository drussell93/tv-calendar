Given(/^I see the calendar$/) do
  visit root_path
end

When(/^I click on Add Show$/) do 
  visit add_path
end

Then(/^I should see the add show page$/) do
  expect(page).to have_content("Add new show")
end
