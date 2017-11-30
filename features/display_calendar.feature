Feature: Display Calendar
  As a show lover
  In order to have a comprehensive view of my viewing time plans
  I want to be able to see a calendar view of my shows
  

  Scenario: User sees the calendar
    When I go to index.html.haml
    Then I should see the calendar
