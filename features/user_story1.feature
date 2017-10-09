Feature: Consolidate Location for Viewing Shows
As a show lover
I want to be able to compare show times - available across different services - in one platform
So that I can watch all the shows I enjoy without missing any

Scenario:
Given I am on the homepage
Then I should see the calendar
When I follow "Add Show"
Then I should be on the add show page
When I fill in "Title" with "Flash"
And I fill in "Time" with "7:30"
And I press "Submit"
Then I should see the calendar page
And The calendar should contain the show "Flash" at location (time) "7:30"
When I click on "Flash" in the calendar
Then I should be on the view show page
And I should see information for that show: "Flash" and "7:30"
When I click on "Edit Show"
Then I should be on the edit show page
When I change "Time" to "8:00" and press submit
Then I should see the calendar page
And The calendar should contain the show "Flash" at location (time) "8:00"
When I click on "Flash" in the calendar
Then I should be on the view show page
And I should see information for that show: "Flash" and "8:00"
When I click on "Remove Show"
Then I should see the calendar page
And The calendar should no longer contain "Flash"

