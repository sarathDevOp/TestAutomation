@Reg
Feature:FES Export can create a Catch Certificate using a Direct Landings option
  As an Exporter, I am able to create Catch Certificates with Direct landings option
  So that, I can avoid adding transport details and use my Fishing vessel details by default

  Scenario:1 - Create a simple Catch Certificate with Direct Landing also validating back to Progress from DL page
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 41 44 63 67 96 29 | TestAuto12 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Direct Landing" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-SIMPLE CATCH CERTIFICATE DL REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | Black scabbardfish (BSF) | Fresh | Gutted | 03028990 - Fresh or chilled fish, n.e.s.|
    Then I should be on the "Add your landing - Create a UK catch certificate - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page
    And I click on "Landings details" link from "Create a UK catch certificate" Progress page
    Then I should be on the "Add your landing - Create a UK catch certificate - GOV.UK" page
    And add exporter adds Direct landing details as follows:
      | 13/12/2021 | NN470 | 10 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
    When The User submits the document
    And I validate the document number from "ONLINE" Confirmation page
    And I sign out external app completely


  Scenario:2 - Adding multiple species with Direct landing
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 41 44 63 67 96 29 | TestAuto12 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Direct Landing" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-DL MULTIPLE SPECIES REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 3 species with their state and presentation as follows:
      | Atlantic cod (COD) | Fresh | Whole    | 03025110 - Fresh or chilled cod "Gadus morhua"|
      | Brill (BLL) | Fresh | Filleted | 03044300 - Fresh or chilled fillets of flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Citharidae"|
      | Atlantic herring (HER) | Fresh | Whole    | 03024100 - Fresh or chilled herring "Clupea harengus, clupea pallasii"|
    And add exporter adds Direct landing details as follows:
      | 19/06/2022 | NN470 | 10.99 | 10.99 | 10.99 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
    When The User submits the document
    Then I validate the document number from "ONLINE" Confirmation page
    And I sign out external app completely


  Scenario:3 - Seasonal blocking in Direct Landing validations
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 41 44 63 67 96 29 | TestAuto12 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Direct Landing" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-DL SEASONAL BLOCKING REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | European seabass (BSS) | Fresh | Whole | 03028410 - Fresh or chilled European sea bass "Dicentrarchus labrax"|
    And add exporter adds Direct landing details as follows:
      | 10/02/2022 | Wiron 5 | 200 |
    Then I should see the seasonal blocking error on the landing page
    When I sign out external app completely


  Scenario:4 - Add conditional notification to Export summary page for Vessel Not Found for Direct Landing and edit it with another vessel
    Given I logged in to the MMO application as:
#     TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 41 44 63 67 96 29 | TestAuto12 |
#      PRE-PROD / PREMO Environment
#      | 50 21 97 26 66 09 | Testmmo90         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Direct Landing" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "VALIDATE CC GUIDANCE LINK REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | European lobster (LBE) | Fresh | Whole | 03063291 - Whole lobsters "Homarus spp.", fresh or chilled |
     And I validate Direct Landings page including errors
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
    Then I should see the message related to invalid vessel "Contact support on 0330 159 1989 to replace your Vessel name or PLN entries of 'Vessel not found (N/A)'."
    When The User submits the document
    Then I should see the error message displayed about Vessel not found
    When I click on change link on Direct Landing
    Then I should redirect to Direct Landings page
    When I change the vessel "Wiron 6" details
    And The User submits the document
    And I validate the document number from "ONLINE" Confirmation page
    Then I sign out external app completely


  Scenario:5 - Fish exporter cannot set future landing date more than seven days for Direct Landing
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 41 44 63 67 96 29 | TestAuto12 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Direct Landing" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-DL FUTURE DATE LANDING REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add authorised products 1 as:
      | Edible crab (brown crab) (CRE) | Fresh | Whole | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled|
    And add exporter direct landing details with future date of 10 as follows:
      | CASTLEWOOD | 30 |
    Then Error message should display: "Date landed can be no more than 7 days in the future"
    And I click error message link to fill the date to 3 days
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
   # Then The user verifies the transport details
    When The User submits the document
    Then I validate the document number from "ONLINE" Confirmation page
    And I sign out external app completely