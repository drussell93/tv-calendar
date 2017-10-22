Feature: Add show to calendar
Scenario: User adds show to calendar
Given: I am on the add show page
When I select The Flash
And I press Add to Calendar
Then The Flash should display in the calendar
