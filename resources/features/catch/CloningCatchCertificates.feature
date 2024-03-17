@Reg
Feature: FES Exporters are able to Clone Catch Certificate
  As an exporter, I am able to clone a CC document, when I haven't reached the maximum number of CC drafts
  So that I am able to reuse the existing documents data.

  Scenario:1 - Validate all the pages in Cloning Catch Certificate.

    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
       #| 31 98 25 22 14 16 | TestAuto12         |
       | 87 55 12 71 09 90 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1       |
    When exporter starts "Create a UK catch certificate"
    And I check the Copy link is not available for cloning "Create a UK catch certificate"
    And I check the Completed "Create a UK catch certificate" documents are not empty
    And I have NOT confirmed the acknowledgement that I must not resubmit catches previously exported before able to proceed to clone the application
    Then I should validate Copy page of "Create a UK catch certificate"
    When I opt to Continue
    Then I should see error validation message for "Create a UK catch certificate"
    When I navigate to void the original document page with "Copy all certificate data AND void the original" options
    Then I should validate void original document page of "Create a UK catch certificate"
    When I opt to Continue
    Then I should see error validation message on Void original document page
    And I sign out external app completely


  Scenario:2 - Back button to no longer proceed to copy application
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
     # | 31 98 25 22 14 16 | TestAuto12         |
      | 87 55 12 71 09 90 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1       |
    When exporter starts "Create a UK catch certificate"
    And I check the Completed "Create a UK catch certificate" documents are not empty
    And I click copy link from Dashboard page
    Then I should be on the page title contains "Copy GBR-"
    When I navigate to void the original document page with "void" options
    When I navigate to void the original document page with "Copy all certificate data AND void the original" options
    Then I should be on the page title contains "Void the original"
    When I click on "Back" link from "void doc" page
    Then I should be on the page title contains "Copy GBR-"
    When I click on "Back" link from "copy doc" page
    Then I should see Dashboard page
    And I check the Completed "Create a UK catch certificate" documents are not empty
    And I click copy link from Dashboard page
    Then I should be on the page title contains "Copy GBR-"
    When I navigate to void the original document page with "Copy all certificate data AND void the original" options
    Then I should be on the page title contains "Void the original"
    When I click on "Cancel" link from "void doc" page
    Then I should see Dashboard page
    And I check the Completed "Create a UK catch certificate" documents are not empty
    And I click copy link from Dashboard page
    Then I should be on the page title contains "Copy GBR-"
    When I click on "Cancel" link from "copy doc" page
    Then I should see Dashboard page
    And I sign out external app completely


  Scenario:3 - Clone a Catch Certificate from dashboard page by Copy all certificate data and create catch certificate
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
    #  | 31 98 25 22 14 16 | TestAuto12   |
     | 87 55 12 71 09 90 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1 |
    When exporter starts "Create a UK catch certificate"
    And I check the Completed "Create a UK catch certificate" documents are not empty
    Then I start cloning document "Create a UK catch certificate" by "Copy all certificate data" from document dashboard page
    And I complete the journey
    And I sign out external app completely


  Scenario:4 - Clone a Catch Certificate from dashboard page by Copy all certificate data EXCEPT the landings
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
     # | 31 98 25 22 14 16 | TestAuto12         |
      | 87 55 12 71 09 90 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1       |
    When exporter starts "Create a UK catch certificate"
    And I check the Completed "Create a UK catch certificate" documents are not empty
    Then I start cloning document "Create a UK catch certificate" by "Copy all certificate data EXCEPT the landings" from document dashboard page
    And I check the entry option selected
    And I click on "Landings details" link from Progress page
# Partially Fixed and need to fix the landings selection
#    And add my landing details as follows:
#      | 01/02/2021 | WK674  | 90.00 |
#    And add exporter 2 landing details as follows:
#      | 01/02/2021 | WK674  |Pacific chub mackerel (MAS), Fresh, Whole, 03024400| 90.00 |
#      | 02/07/2020 | PH1100 |Splendid alfonsino (BYS), Fresh, Whole, 03028990| 120   |
#    And I complete the journey
    And I sign out external app completely


  Scenario:5 - Clone a Catch Certificate from dashboard page by Copy all certificate data AND void the original
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
    #  | 31 98 25 22 14 16 | TestAuto12         |
      | 87 55 12 71 09 90 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1       |
    When exporter starts "Create a UK catch certificate"
    And I check the Completed "Create a UK catch certificate" documents are not empty
    Then I start cloning document "Create a UK catch certificate" by "Copy all certificate data AND void the original" from document dashboard page
    And I continue my "Create a UK catch certificate" journey by confirming voiding "Yes" option
    And I verify "Create a UK catch certificate" original documents existing status on the Dashboard
    And I sign out external app completely


  Scenario:6 - Clone a Catch Certificate from dashboard page by Copy all certificate data AND void the original
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
   #   | 31 98 25 22 14 16 | TestAuto12          |
      | 87 55 12 71 09 90 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1       |
    When exporter starts "Create a UK catch certificate"
    And I check the Completed "Create a UK catch certificate" documents are not empty
    Then I start cloning document "Create a UK catch certificate" by "Copy all certificate data AND void the original" from document dashboard page
    And I continue my "Create a UK catch certificate" journey by confirming voiding "No" option
    And I verify "Create a UK catch certificate" original documents existing status on the Dashboard
    And I sign out external app completely


  Scenario:7 - Exporter is on their dashboard and has reached the maximum number of CC drafts
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
     # | 19 58 46 11 27 12 | TestAuto12         |
      | 87 55 12 71 09 90 | Testaccount1 |
    #      PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1       |
    When exporter starts "Create a UK catch certificate"
    Then I am notified that the maximum number of drafts has been reached for "Create a UK catch certificate"
    And I sign out external app completely



  Scenario:8 - Unable to clone when maximum number of CC drafts are reached
  Given I logged in to the MMO application as:
     # TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 14 48 94 74 31 49 | Testaccount1 |
     # | 87 55 12 71 09 90 | Testaccount1 |
      #      PRE-PROD / PREMO Environment
      #| 41 76 37 65 65 02 | Testaccount1       |
    When exporter starts "Create a UK catch certificate"
    Then I am notified that the maximum number of drafts has been reached for "Create a UK catch certificate"
    And I sign out external app completely



