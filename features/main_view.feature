Feature: Show Calendar

  Scenario: User sees the calendar
    When I go to index.html.haml
    Then I should see the calendar 
