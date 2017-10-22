Feature: Remove show from calendar
Scenario: User removes show from calendar
Given: I see the calendar
And The Flash has been added
When I select The Flash
And I press Remove Show
Then The Flash should be removed from the calendar
