@Reg
Feature: FES Exporters are able to Clone Storage Documents
  As an exporter, I am able to clone a SD document, when I haven't reached the maximum number of SD drafts
  So that I am able to reuse the existing documents data.



  @SD
  Scenario:1 - Validate all the pages in Cloning Storage Document.
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 76 79 14 15 89 28 | Testing300         |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    When exporter starts "Create a UK storage document"
    And I check the Copy link is not available for cloning "Create a UK storage document"
    And I check the Completed "Create a UK storage document" documents are not empty
    And I have NOT confirmed the acknowledgement that I must not resubmit catches previously exported before able to proceed to clone the application
    Then I should validate Copy page of "Create a UK storage document"
    When I opt to Continue
    Then I should see error validation message for "Create a UK storage document"
    When I navigate to void the original document page with "Copy all certificate data AND void the original" options
    Then I should validate void original document page of "Create a UK storage document"
    When I opt to Continue
    Then I should see error validation message on Void original document page
    And I sign out external app completely

  @FI0-2900
  @Test01
  Scenario:2 - Back button to no longer proceed to copy application
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 76 79 14 15 89 28 | Testing300         |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    When exporter starts "Create a UK storage document"
    And I check the Completed "Create a UK storage document" documents are not empty
    And I click copy link from Dashboard page
    Then I should be on the page title contains "Copy GBR-"
    When I navigate to void the original document page with "void" options
    When I navigate to void the original document page with "Copy all certificate data AND void the original" options
    Then I should be on the page title contains "Void the original"
    When I click on "Back" link from "void doc" page
    Then I should be on the page title contains "Copy GBR-"
    When I click on "Back" link from "copy doc" page
    Then I should see Dashboard page
    And I check the Completed "Create a UK storage document" documents are not empty
    And I click copy link from Dashboard page
    Then I should be on the page title contains "Copy GBR-"
    When I navigate to void the original document page with "Copy all certificate data AND void the original" options
    Then I should be on the page title contains "Void the original"
    When I click on "Cancel" link from "void doc" page
    Then I should see Dashboard page
    And I check the Completed "Create a UK storage document" documents are not empty
    And I click copy link from Dashboard page
    Then I should be on the page title contains "Copy GBR-"
    When I click on "Cancel" link from "copy doc" page
    Then I should see Dashboard page
    And I sign out external app completely

  @FI0-2900
  Scenario:3 - Clone a Storage Document from dashboard page by Copy all certificate data
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 76 79 14 15 89 28 | Testing300         |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    When exporter starts "Create a UK storage document"
    And I check the Completed "Create a UK storage document" documents are not empty
    Then I start cloning document "Create a UK storage document" by "Copy all certificate data" from document dashboard page
    And I complete the journey
    And I sign out external app completely

  @FI0-2900
  Scenario:4 - Clone a Storage Document from dashboard page by Copy all certificate data AND void the original
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 76 79 14 15 89 28 | Testing300         |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    When exporter starts "Create a UK storage document"
    And I check the Completed "Create a UK storage document" documents are not empty
    Then I start cloning document "Create a UK storage document" by "Copy all certificate data AND void the original" from document dashboard page
    And I continue my "Create a UK storage document" journey by confirming voiding "Yes" option
    And I verify "Create a UK storage document" original documents existing status on the Dashboard
    And I sign out external app completely


  @FI0-2900
  Scenario:5 - Clone a Storage Document from dashboard page by Copy all certificate data AND void the original
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 76 79 14 15 89 28 | Testing300         |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    When exporter starts "Create a UK storage document"
    And I check the Completed "Create a UK storage document" documents are not empty
    Then I start cloning document "Create a UK storage document" by "Copy all certificate data AND void the original" from document dashboard page
    And I continue my "Create a UK storage document" journey by confirming voiding "No" option
    And I verify "Create a UK storage document" original documents existing status on the Dashboard
    And I sign out external app completely


#  @FI0-2929
#  Scenario:6 - Verify that Cloning option is not available if the Exporter reached the maximum number of SD drafts
#    Given I logged in to the MMO application as:
##      TST Env Test Account
##      | soleTraderUser    | soleTraderPassword |
#      | 19 58 46 11 27 12 | TestAuto12         |
#    When exporter starts "Create a UK storage document"
#    Then I want to stop exporters from copying an application of "Create a UK storage document"
#    And I am notified that the maximum number of drafts has been reached for "Create a UK storage document"
#    And I sign out external app completely