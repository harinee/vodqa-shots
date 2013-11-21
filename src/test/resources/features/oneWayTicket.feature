Feature: One-way ticket booking
  As a User
  I want to be able to book one-way tickets
  So that I can complete my booking

  Background:
    Given I am on the cleartrip search page
    And one-way ticket is selected by default
    And I select source city as "Bangalore"
    And I select destination city as "Chennai"
    And I select onward date as "1/1/2014"
    And I select number of adult passengers as "1"
    And I select number of child passengers as "0"
    And I select carrier choice as "Jet Airways"
    And I search for the tickets
    And I see a journey with flight number "123"
    And I select the first ticket for flight number "123" for booking

  Scenario: Payment page for a one-way ticket for implicit user
    When I accept terms and conditions
    Then I should see the payment page

    Scenario: Payment page for a one-way ticket for logged in user
      Given I am logged in as a valid Cleartrip user
      When I accept terms and conditions
      Then I should see the payment page



