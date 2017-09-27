Feature: user should be able to book time in laundry room
  As a user
  In order to get my washing done
  I would like to be able to book a laundry time

  Background:
    Given user visits the booking page
    
  Scenario: user can book a laundry time
    And Show me the page
    Given I see a list of available times
    And I see the text "08.00"
    And I click on "book"
    Then I should see the text "Booked"