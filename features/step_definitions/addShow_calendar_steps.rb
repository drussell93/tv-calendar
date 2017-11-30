Given("I am on the add show page") do
  visit add_path
  #expect(page).to have_content("Add new show")
end

#When (/"I select (.*)"/) do |shows|
 # shows.split(", ").each do |show|
  #  show.create :title == show
  #end
#end

When /^I select (.+)$/ do |events|
  events.split(", ").each do |event|
    Event.create(title: event, start: "2017-11-27", end: "2017-11-27 00:30:00") 
    end
end

When("I press Add to Calendar") do
  pending
end

Then("The Flash should display in the calendar") do
  pending # Write code here that turns the phrase above into concrete actions
end
