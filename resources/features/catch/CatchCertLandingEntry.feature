@Reg
Feature: Landings Entry page navigation
  MMO application should allow the user
  to backwards and forwards with correct pages


  Scenario:1 - Verify the user is able to navigate back to Exporter details from Landings entry page.
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 63 85 85 42 43 49 | TestAuto12 |
#      PRE-PROD / PREMO Environment
#      |41 76 37 65 65 02  |Testaccount1         |
    When ECC user create "Create a UK catch certificate" certificate
    Then I should see "Landings Entry" page
    When I select "Manual entry" landings entry and "Continue" the journey
    Then I should see "Your Progress" page
    When I click "Back" link from Progress page
    Then I should see "Landings Entry" page
    When I click "Back" option
    Then I should see "CC Dashboard" page
    And I sign out external app completely

  Scenario:2 - User is able to change the Landing entry type from Check you information page
    Given I logged in to the MMO application as:
#     TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
     | 63 85 85 42 43 49 | TestAuto12 |
#      PRE-PROD / PREMO Environment
#      | 50 21 97 26 66 09 | Testmmo90 |

    When ECC user create "Create a UK catch certificate" certificate
    And I select "Direct Landing" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "VALIDATE LANDING ENTRY CHANGE LINK REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | LBE | Fresh | Whole | 03063291 - Whole lobsters "Homarus spp.", fresh or chilled |
    And add exporter adds Direct landing details as follows:
      | 1/1/2023 | WIRON 5 | 10.99 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
     And I click on landing entry change link
     Then I should see "Landings Entry" page
     When I select "Manual entry" landings entry and "Continue" the journey
     Then I should see Landing entry change confirmation page
     And I should be on Landings confirmation page
     And I sign out external app completely
