Feature: User shouts with text

  Scenario: Shouts successfully
    Given I shouted "Hello World"
    Then I have a "Hello World" shout
