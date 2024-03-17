 @Reg
Feature: FES Exporters are able to Clone Processing Statement
  As an exporter, I am able to clone a PS document, when I haven't reached the maximum number of PS drafts
  So that I am able to reuse the existing documents data.


  @FI0-2900
  Scenario:1 - Validate all the pages in Cloning Processing Statement.
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
#      | 31 98 25 22 14 16 | TestAuto12         |
      | 96 50 67 91 51 91 | Testmmo30         |
#      PRE-PROD / PREMO Environment
#      | 78 72 64 04 59 26 | Testaccount1      |
    When exporter starts "Create a UK processing statement"
    And I check the Copy link is not available for cloning "Create a UK processing statement"
    And I check the Completed "Create a UK processing statement" documents are not empty
    And I have NOT confirmed the acknowledgement that I must not resubmit catches previously exported before able to proceed to clone the application
    Then I should validate Copy page of "Create a UK processing statement"
    When I opt to Continue
    Then I should see error validation message for "Create a UK processing statement"
    When I navigate to void the original document page with "Copy all certificate data AND void the original" options
    Then I should validate void original document page of "Create a UK processing statement"
    When I opt to Continue
    Then I should see error validation message on Void original document page
    And I sign out external app completely


  @FI0-2900
  Scenario:2 - Back button to no longer proceed to copy application
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 96 50 67 91 51 91 | Testmmo30         |
#      PRE-PROD / PREMO Environment
#      | 78 72 64 04 59 26 | Testaccount1      |
    When exporter starts "Create a UK processing statement"
    And I check the Completed "Create a UK processing statement" documents are not empty
    And I click copy link from Dashboard page
    Then I should be on the page title contains "Copy GBR-"
    When I navigate to void the original document page with "void" options
    When I navigate to void the original document page with "Copy all certificate data AND void the original" options
    Then I should be on the page title contains "Void the original"
    When I click on "Back" link from "void doc" page
    Then I should be on the page title contains "Copy GBR-"
    When I click on "Back" link from "copy doc" page
    Then I should see Dashboard page
    And I check the Completed "Create a UK processing statement" documents are not empty
    And I click copy link from Dashboard page
    Then I should be on the page title contains "Copy GBR-"
    When I navigate to void the original document page with "Copy all certificate data AND void the original" options
    Then I should be on the page title contains "Void the original"
    When I click on "Cancel" link from "void doc" page
    Then I should see Dashboard page
    And I check the Completed "Create a UK processing statement" documents are not empty
    And I click copy link from Dashboard page
    Then I should be on the page title contains "Copy GBR-"
    When I click on "Cancel" link from "copy doc" page
    Then I should see Dashboard page
    And I sign out external app completely


  Scenario:3 - Clone a Processing Statement from dashboard page by Copy all certificate data
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 96 50 67 91 51 91 | Testmmo30         |
#      PRE-PROD / PREMO Environment
#      | 78 72 64 04 59 26 | Testaccount1      |
    When exporter starts "Create a UK processing statement"
    And I check the Completed "Create a UK processing statement" documents are not empty
    Then I start cloning document "Create a UK processing statement" by "Copy all certificate data" from document dashboard page
    And I complete the journey
    And I sign out external app completely

  @FI0-2900
  Scenario:4 - Clone a Processing Statement from dashboard page by Copy all certificate data AND void the original
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 96 50 67 91 51 91 | Testmmo30         |
#      PRE-PROD / PREMO Environment
#      | 78 72 64 04 59 26 | Testaccount1      |
    When exporter starts "Create a UK processing statement"
    And I check the Completed "Create a UK processing statement" documents are not empty
    Then I start cloning document "Create a UK processing statement" by "Copy all certificate data AND void the original" from document dashboard page
    And I continue my "Create a UK processing statement" journey by confirming voiding "Yes" option
    And I verify "Create a UK processing statement" original documents existing status on the Dashboard
#    Validate the previous document doesn't exists on the list of docs
    And I sign out external app completely


  @FI0-2900
  Scenario:5 - Clone a Processing Statement from dashboard page by Copy all certificate data AND void the original
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 96 50 67 91 51 91 | Testmmo30         |
#      PRE-PROD / PREMO Environment
#      | 78 72 64 04 59 26 | Testaccount1      |
    When exporter starts "Create a UK processing statement"
    And I check the Completed "Create a UK processing statement" documents are not empty
    Then I start cloning document "Create a UK processing statement" by "Copy all certificate data AND void the original" from document dashboard page
    And I continue my "Create a UK processing statement" journey by confirming voiding "No" option
    And I verify "Create a UK processing statement" original documents existing status on the Dashboard
    #    Validate the previous document exists on the list of docs
    And I sign out external app completely


#  @FI0-2929
#  Scenario:6 - Verify that Cloning option is not available if the Exporter reached the maximum number of PS drafts
#    Given I logged in to the MMO application as:
##      TST Env Test Account
##      | soleTraderUser    | soleTraderPassword |
#      | 19 58 46 11 27 12 | TestAuto12         |
#    When exporter starts "Create a UK processing statement"
#    Then I want to stop exporters from copying an application of "Create a UK processing statement"
#    And I am notified that the maximum number of drafts has been reached for "Create a UK processing statement"
##    And I sign out external app completely