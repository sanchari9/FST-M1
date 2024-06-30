@Activity5
Feature: Login Test

  Scenario Outline: Testing Login with Examples
    Given User is on Login Page
    When User enters "<Usernames>" and "<Passwords>"
    Then Read the page title and confirmation message

    Examples:
      | Usernames | Passwords |
      | admin     | password  |
      | adminUser | Password  |