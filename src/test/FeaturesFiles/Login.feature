Feature: Login Test

  Scenario: 1 Sucessfully Test
    Given The user able to Lauch the DemoCart Application
    When the user enter the username And password
    And the user click on Login Button
    Then User navigated to dashboard successfully
    And The user logout from applciation

  Scenario: 2 Invalid Test
    Given The user able to Lauch2 the DemoCart Application
    When the user enter the username And password
    And the user click on Login Button
    Then User navigated to dashboard successfully
    And The user logout from applciation




