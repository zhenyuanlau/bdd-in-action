Feature: Cash withdrawal

  Scenario: Successful withdrawal from an account in credit
    Given I have $100 in my Account
    When I request $20
    Then $20 should be dispensed
