@Reg
Feature: Seasonal Black Fish
  MMO application should not allow Bass caught between 1st Feb to March 31st
  to be unavailable
#   Rules Sea Bass caught between 1st February and March of any year
#   Must be prevented from appearing on a valid catch certificate


  Scenario:1 - Selected seasonal black fish - Sea Bass - outside the range 1st February to 31st March
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 50 25 13 11 38 34 | Testaccount1       |
#      PRE-PROD / PREMO Environment
#      |41 76 37 65 65 02  |Testaccount1         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-SEASONAL BLOCKING-SEA BASS REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | European seabass (BSS) | Fresh | Whole |03028410 - Fresh or chilled European sea bass "Dicentrarchus labrax"|
    And add exporter 1 landing details as follows:
      | 01/04/2019 | NN470 | European seabass (BSS), Fresh, Whole, 03028410 | 200 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
   And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    Then I sign out external app completely


  Scenario:2 - Seasonal black fish - Bass - between 1st of Feb and 31st March not available
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 34 59 67 53 74 23 | Testaccount1       |
#      PRE-PROD / PREMO Environment
#      |41 76 37 65 65 02  |Testaccount1         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-SEASONAL BLOCKING-SEA BASS REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | European seabass (BSS) | Fresh | Whole | 03028410 - Fresh or chilled European sea bass "Dicentrarchus labrax"|
    And add exporter 1 landing details for Seasonal Blocking as follows:
      | 10/02/2019 | WK34 | European seabass (BSS), Fresh, Whole, 03028410 | 200 |
    Then I should see the seasonal blocking error on the landing page
    When I sign out external app completely

