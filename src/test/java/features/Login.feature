@LoginFeature
Feature: Login Feature

  Background: Open to login Page
    Given User has navigated to login page

  @Regression @Sanity
  Scenario: Positive login scenario
    When User Enter correct username and password
    And User clicks on login Button
    Then user should be navigated to the home page

  @Regression
  Scenario: Positive login scenario with Parameter
    When User Enter correct username "abc@xyz.com" and password "Avc@1234"
    And User clicks on login Button
    Then user should be navigated to the home page

  Scenario Outline: Positive login scenario with multiple Parameter
    When User Enter correct username "<UserName>" and password "<Password>"
    And User clicks on login Button
    Then user should be navigated to the home page

    Examples: 
      | UserName    | Password |
      | abc@asc.com | acA@1213 |
      | xud@not.com | noT@0987 |

  Scenario Outline: Negative login scenario with multiple Parameter
    When User Enter correct username "<UserName>" and password "<Password>"
    And User clicks on login Button
    Then user should be getting the error massage "<Error>"

    Examples: 
      | UserName    | Password | Error                                              |
      | abc@asc.com | acA@1213 | The email or password you have entered is invalid. |
      | xud@not.com | noT@0987 | The email or password you have entered is invalid. |

  @DataTable
  Scenario: Positive login scenario with cucumber data table
    When User Enter correct credentials
      | Field    | Value        |
      | UserName | abd@crik.com |
      | Password | Abd@1234     |
    And User clicks on login Button
    Then user should be navigated to the home page
