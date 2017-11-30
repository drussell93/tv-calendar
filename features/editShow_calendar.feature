Feature: Edit show in calendar
  As a perfectionistic show lover
  In order to update incorrect event information
  I want to be able to change any information surrounding a given event
  
    Scenario: User edits show in calendar
        Given: I see the calendar
        And The Flash has been added
        When I select The Flash
        And I press Edit Show
        And I change the time from 7:00 to 7:30
        Then The Flash start time should change from 7:00 to 7:30
