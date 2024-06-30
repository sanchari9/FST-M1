@Activity6
Feature: Data Driven Test using DataTable

  @Scenario1
  Scenario: Testing with Data from Scenario
    Given User completes the requirement
    When User enters the following username and password
      | admin     | password |
      | adminUser | Password |
      | adminUser |          |
    Then Verify results


  @Scenario2
  Scenario: Testing the To-Do app
    Given User completes the requirement
    When User enters the following tasks
      | task1 |
      | task2 |
      | task3 |
    Then Verify results