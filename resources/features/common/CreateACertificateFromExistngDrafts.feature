@Reg
Feature: ECC users are able to create CC, PS & SD from existing drafts documents
  As an External app user
  I am able to continue to create a certificate from an existing draft document


  Scenario:1 - Continue Catch certificate document from DRAFT from journey Dashboard page
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
#      | 17 37 02 75 82 78 | TestAuto12 |
      | 14 48 94 74 31 49 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1 |
    When exporter starts "Create a UK catch certificate"
    And the user continue his "Create a UK catch certificate" document
    And I check the entry option selected
    And I validate "Create a UK catch certificate" Progress page
    And I sign out external app completely


  Scenario:2 - Continue Processing Statement document from DRAFT from journey Dashboard page
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
#    | 17 37 02 75 82 78 | TestAuto12 |
      | 96 50 67 91 51 91 | Testmmo30 |
    When exporter starts "Create a UK processing statement"
    And the user continue his "Create a UK processing statement" document
    And I validate "Create a UK processing statement" Progress page
    Then I sign out external app completely


  Scenario:3 - Continue Storage Document from DRAFT from journey Dashboard page
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 96 50 67 91 51 91 | Testmmo30 |
    When exporter starts "Create a UK storage document"
    And the user continue his "Create a UK storage document" document
    And I validate "Create a UK storage document" Progress page
    Then I sign out external app completely