@Reg
Feature:FES Exporter can receive Email notification for OffLine Validation for CC
  As an exporter,
  I want to be able to receive an email notification for OffLine validation ( CC for more than 10 uniquie Landings)
  So that I know when my application process is completed.

  Scenario:1 - Verify email for successful 1 product and multiple landings CC
    Given I logged in to the MMO application as:
      | 55 10 90 75 50 81 | Summer2021 |
    When ECC user create "Create a UK catch certificate" certificate
    And I select "Manual entry" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-SIMPLE CATCH CERTIFICATE REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | ALC | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s. |
    And add exporter 11 landing details as follows:
      | 01/10/2020 | B1005 | Baird's slickhead (ALC), Fresh, Whole, 03028990| 1  |
      | 02/10/2020 | CT185 | Baird's slickhead (ALC), Fresh, Whole, 03028990 | 2  |
      | 03/10/2020 | PL39  | Baird's slickhead (ALC), Fresh, Whole, 03028990 | 3  |
      | 04/10/2020 | PL39  | Baird's slickhead (ALC), Fresh, Whole, 03028990| 4  |
      | 05/10/2020 | PL80  | Baird's slickhead (ALC), Fresh, Whole, 03028990 | 5  |
      | 06/10/2020 | LN57  | Baird's slickhead (ALC), Fresh, Whole, 03028990| 6  |
      | 07/10/2020 | PL11  | Baird's slickhead (ALC), Fresh, Whole, 03028990 | 7  |
      | 08/10/2020 | BM55  | Baird's slickhead (ALC), Fresh, Whole, 03028990 | 8  |
      | 09/10/2020 | FH121 | Baird's slickhead (ALC), Fresh, Whole, 03028990 | 9  |
      | 10/10/2020 | SS197 | Baird's slickhead (ALC), Fresh, Whole, 03028990 | 10 |
      | 11/10/2020 | FH444 | Baird's slickhead (ALC), Fresh, Whole, 03028990 | 11 |
  #    | 29/01/2022 | WIRON 5 | Black scabbardfish (BSF), Fresh, Gutted, 03028990 | 10 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    And The User submits the document
    And I validate Catch certificate Offline Confirmation page
    And I navigate back to "Create a UK catch certificate" Dashboard page
    Then I should see the document status as "PENDING" on the CC Dashboard page
    Then I should see the offline document status as "PENDING" on the CC Dashboard page
    And I sign out external app completely
    Given I logged in to the outlook application as:
      | defraTest@outlook.com | Summer2022@ |
    Then I search the document number from in the inbox
    And I validate the document number from email
    And I validated the Email for "Successful" Message
    And I sign out outlook app

  @Reg
  Scenario:2 - Verify email for successful CC with multiple products and multiple landings
    Given I logged in to the MMO application as:
      | 55 10 90 75 50 81 | Summer2021 |
    When ECC user create "Create a UK catch certificate" certificate
    And I select "Manual entry" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-SIMPLE CATCH CERTIFICATE REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 11 species with their state and presentation as follows:
      | Baird's slickhead (ALC) | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s. |
      | Alfonsinos nei (ALF)| Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s. |
      | Greater amberjack (AMB) | Fresh | Whole | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes "Scomberomorus spp.", jacks, crevalles "Caranx spp.", silver pomfrets "Pampus spp.", Pacific saury "Cololabis saira", scads "Decapterus spp.", capelin "Mallotus villosus", bonitos "Sarda spp.", marlins, sailfishes and spearfish "Istiophoridae" |
      | Amer. plaice(=Long rough dab) (PLA) | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s.     |
      | European anchovy (ANE) | Fresh | Whole | 03024200 - Fresh or chilled anchovies "Engraulis spp."|
      | Spanish ling (SLI) | Fresh | Whole | 03025940 - Fresh or chilled ling "Molva spp."|
      |Blackbellied angler (ANK) | Fresh | Whole | 03028950 - Fresh or chilled monkfish "Lophius spp."       |
      | Blue antimora (ANT) | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s.     |
      | Iceland catshark (APQ) | Fresh | Whole | 03028115 - Fresh or chilled picked dogfish "Squalus acanthias" and catsharks "Scyliorhinus spp."   |
      | Argentines (ARG) | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s.     |
# 10 species
      | Greater argentine (ARU) | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s.     |
    And add exporter 11 landing details as follows:
      | 01/10/2020 | B1005 | Baird's slickhead (ALC), Fresh, Whole, 03028990| 1 |
      | 02/10/2020 | CT185 | Alfonsinos nei (ALF), Fresh, Whole, 03028990 | 2 |
      | 03/10/2020 | PL39  | Greater amberjack (AMB), Fresh, Whole, 03024990 | 3 |
      | 04/10/2020 | PL39  |Amer. plaice(=Long rough dab) (PLA), Fresh, Whole, 03028990| 4 |
      | 05/10/2020 | PL80  | European anchovy (ANE), Fresh, Whole, 03024200  | 5 |
      | 06/10/2020 | LN57  | Spanish ling (SLI), Fresh, Whole, 03025940| 1 |
      | 07/10/2020 | PL11  | Blackbellied angler (ANK), Fresh, Whole, 03028950 | 2 |
      | 08/10/2020 | BM55  | Blue antimora (ANT), Fresh, Whole, 03028990  | 3 |
      | 09/10/2020 | FH121 | Iceland catshark (APQ), Fresh, Whole, 03028115   | 4 |
      | 10/10/2020 | SS197 | Argentines (ARG), Fresh, Whole, 03028990         | 5 |
      | 11/10/2020 | FH444 | Greater argentine (ARU), Fresh, Whole, 03028990   | 1 |
  #    | 29/01/2022 | WIRON 5 | Black scabbardfish (BSF), Fresh, Gutted, 03028990 | 10 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    And The User submits the document
    And I validate Catch certificate Offline Confirmation page
#    When I click on Return to dashboard link
    And I navigate back to "Create a UK catch certificate" Dashboard page
    Then I should see the document status as "PENDING" on the CC Dashboard page
    Then I should see the offline document status as "PENDING" on the CC Dashboard page
    #Then I validate the document number from "OFFLINE" Confirmation page
    #And I sign out external app completely
    Given I logged in to the outlook application as:
      | defraTest@outlook.com | Summer2022@ |
    Then I search the document number from in the inbox
    And I validate the document number from email
    And I validated the Email for "Successful" Message
    And I sign out outlook app



    @emil
  Scenario:3 - Verify email for failure CC
    Given I logged in to the MMO application as:
      #| 55 10 90 75 50 81 | Summer2021 |
     | 87 55 12 71 09 90 |Testaccount1|
      When ECC user create "Create a UK catch certificate" certificate
      And I select "Manual entry" landings entry and "Continue" the journey
      And I click on "Your reference (Optional)" link from Progress page
      And Add Reference "CC-SIMPLE CATCH CERTIFICATE REFERENCE" to the catch certificate
      And Continue my "Create a UK catch certificate" with "default" addresses
        | Automation Testing | Automation City | SA6 8PP | United Kingdom |
      And exporter add 11 species with their state and presentation as follows:
        | Baird's slickhead (ALC) | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s. |
        | Alfonsinos nei (ALF)| Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s. |
        | Greater amberjack (AMB) | Fresh | Whole | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes "Scomberomorus spp.", jacks, crevalles "Caranx spp.", silver pomfrets "Pampus spp.", Pacific saury "Cololabis saira", scads "Decapterus spp.", capelin "Mallotus villosus", bonitos "Sarda spp.", marlins, sailfishes and spearfish "Istiophoridae" |
        | Amer. plaice(=Long rough dab) (PLA) | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s.     |
        | European anchovy (ANE) | Fresh | Whole | 03024200 - Fresh or chilled anchovies "Engraulis spp."|
        | Spanish ling (SLI) | Fresh | Whole | 03025940 - Fresh or chilled ling "Molva spp."|
        |Blackbellied angler (ANK) | Fresh | Whole | 03028950 - Fresh or chilled monkfish "Lophius spp."       |
        | Blue antimora (ANT) | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s.     |
        | Iceland catshark (APQ) | Fresh | Whole | 03028115 - Fresh or chilled picked dogfish "Squalus acanthias" and catsharks "Scyliorhinus spp."   |
        | Argentines (ARG) | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s.     |
        | Blue shark (BSH) | Fresh | Whole | 03028140 - Fresh or chilled blue shark "Prionace glauca"     |
      And add exporter 11 landing details as follows:
      | 01/10/2020 | B1005 | Baird's slickhead (ALC), Fresh, Whole, 03028990| 1 |
      | 02/10/2020 | CT185 | Alfonsinos nei (ALF), Fresh, Whole, 03028990 | 2 |
      | 03/10/2020 | PL39  | Greater amberjack (AMB), Fresh, Whole, 03024990 | 3 |
      | 04/10/2020 | PL39  |Amer. plaice(=Long rough dab) (PLA), Fresh, Whole, 03028990| 4 |
      | 05/10/2020 | PL80  | European anchovy (ANE), Fresh, Whole, 03024200  | 5 |
      | 06/10/2020 | LN57  | Spanish ling (SLI), Fresh, Whole, 03025940| 1 |
      | 07/10/2020 | PL11  | Blackbellied angler (ANK), Fresh, Whole, 03028950 | 2 |
      | 08/10/2020 | BM55  | Blue antimora (ANT), Fresh, Whole, 03028990  | 3 |
      | 09/10/2020 | FH121 | Iceland catshark (APQ), Fresh, Whole, 03028115   | 4 |
      | 10/10/2020 | SS197 | Argentines (ARG), Fresh, Whole, 03028990         | 5 |
      | 07/07/2019 | BM361 |Blue shark (BSH), Fresh, Whole, 03028140 | 200 |
      And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
      And I enter a Catch Transport type: "Truck"
        | NAT | REG | DEST |
      And The User submits the document
      And I navigate back to "Create a UK catch certificate" Dashboard page
      Then I should see the document status as "FAILED" on the CC Dashboard page
      Then I should see the offline document status as "FAILED" on the CC Dashboard page
      Given I logged in to the outlook application as:
      | defraTest@outlook.com | Summer2022@ |
      Then I search the document number from in the inbox
      And I validate the document number from email
      And I validated the Email for "Failure" Message
      #And I sign out outlook app
