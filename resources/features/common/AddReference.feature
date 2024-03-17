@Reg
Feature: FES Exporters are able to add their own reference to CC, PS & SD
  As an Exporter, I want to be able to add a unique reference to my Draft documents
  So that I can identify them uniquely

  @Reg   @TestGreen
  Scenario:1 - Validating Add Reference page with >60 chars, Special Chars & Blank value
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
#      | 37 44 16 70 04 93 | Testmmo33          |
      | 34 59 67 53 74 23 | Testaccount1 |
    When ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
#   User can validate all the Text & Fields on Add Reference page scenario
    And I validate Add reference page
#   User can't enter more than 60 characters for reference field scenario
    And Add Reference "60 characters catch certificate reference field validation" to the catch certificate
    Then I should see the reference validation message "max length"
#   User can't enter special chars for reference field scenario
    When Add Reference "special char$" to the catch certificate
    Then I should see the reference validation message "special char$"
#   User can enter blank reference field scenario
    When Add Reference "" to the catch certificate
    Then I should be on "Create a UK catch certificate" exporter details page
    And I sign out external app completely




  Scenario:2 - Validating Add Reference page with >60 chars, Special Chars & Blank value
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
#      | 37 44 16 70 04 93 | Testmmo33          |
      | 34 59 67 53 74 23 | Testaccount1 |
    When ECC user create "Create a UK processing statement" certificate
    #When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
#   User can validate all the Text & Fields on Add Reference page scenario
    And I validate Add reference page
#   User can't enter more than 60 characters for reference field scenario
    And Add Reference "60 characters catch certificate reference field validation60 characters catch certificate reference field validation" to the catch certificate
    Then I should see the reference validation message "max length"
#   User can't enter special chars for reference field scenario
    When Add Reference "special char$" to the catch certificate
    Then I should see the reference validation message "special char$"
#   User can enter blank reference field scenario
    When Add Reference "" to the catch certificate
    Then I should be on "Create a UK processing statement" exporter details page
    And I sign out external app completely