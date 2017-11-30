Given("I am on the add show page") do
  visit add_path
  #expect(page).to have_content("Add new show")
end

When('I select /(.*)/') do |shows|
  shows.split(", ").each do |show|
    show.create :title == show
  end
end

When("I press Add to Calendar") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("The Flash should display in the calendar") do
  pending # Write code here that turns the phrase above into concrete actions
end
