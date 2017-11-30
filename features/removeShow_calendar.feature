Feature: Remove show from calendar
  As a disapointed show connoisseur
  In order to remove what is displeasing or incorrect from my plans
  I want to be able to delte an event from my calendar
  
    Scenario: User removes show from calendar
        Given: I see the calendar
        And The Flash has been added
        When I select The Flash
        And I press Remove Show
        Then The Flash should be removed from the calendar
