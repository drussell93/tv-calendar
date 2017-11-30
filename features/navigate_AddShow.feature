Feature: Navigate to Add Show
  As a show lover
  In order to add a new event to my plans for my viewing pleasure
  I want to be able to have a way to add an event to my calendar 
  
  Scenario: User navigates to add show
    Given I see the calendar
    When I click on Add Show
    Then I should see the add show page
