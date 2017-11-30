Feature: Add show to calendar
  In order to plan my screen time
  As a show lover
  I want to add a show to my calendar
  
  Scenario: Add Event
    Given I am on the add event page
    When I select The Flash
    And I press Add to Calendar
    Then The Flash should display in the calendar

