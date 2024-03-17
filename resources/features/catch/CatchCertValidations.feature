@Reg
Feature:FES Exporter can validate all the pages for CC journey
  As an Application user I am able to validate all the page for CC journey
  So that I can ensure that I have entered the valid and correct information


  Scenario:1 - Block catch certificate for 3C or 3D rules
    Given I logged in to the MMO application as:
#      TST Env Test Account
      | 88 46 34 97 99 32 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 19 58 77 94 43 89 | Testaccount1      |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "BLOCKED CATCH CERTIFICATE REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | Atlantic cod (COD)| Fresh | Whole | 03025110 - Fresh or chilled cod "Gadus morhua" |
    And add exporter 1 landing details as follows:
      | 01/03/2020 | BRD123 |Atlantic cod (COD), Fresh, Whole, 03025110 | 200 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Jersey"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
#    Then I should see the error validations messages
#    And I navigate back to "Create a UK catch certificate" Dashboard page
#    Then I should see the document status as "FAILED" on the CC Dashboard page
#    When I click on Continue link of "FAILED" Document
#    Then I should see the error validations messages
#    When The User submits the document
    And I sign out external app completely


  Scenario:2 - Should be able to view and click the guidance link within the Dynamic error message
    Given I logged in to the MMO application as:
#     TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
#      | 40 26 52 86 91 85 | Testaccount1 |
#      PRE-PROD / PREMO Environment
      | 50 21 97 26 66 09 | Testmmo90         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "VALIDATE CC GUIDANCE LINK REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "Postcode Search" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | European lobster (LBE) | Fresh | Whole | 03063291 - Whole lobsters "Homarus spp.", fresh or chilled |
    And add exporter 1 landing details as follows:
      | 19/01/2020 | SN12 | European lobster (LBE), Fresh, Whole, 03063291 | 100 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    #Then the error message is displayed
#    When I click on the guidance link within the error message
#    Then I should be redirected to a link within gov.uk with guidance on what to do next
    And I sign out external app completely


  Scenario:3 - Validate the Vessel license date validation message
    Given I logged in to the MMO application as:
#     TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 81 63 22 73 29 79 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 50 21 97 26 66 09 | Testmmo90         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "INVALID VESSEL LICENSE CC REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "Postcode Search" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | European lobster (LBE) | Fresh | Whole | 03063291 - Whole lobsters "Homarus spp.", fresh or chilled|
    And add exporter 1 landing details with license expired date
      | 19/09/2020 | CASTLEWOOD | BEuropean lobster (LBE), Fresh, Whole, 030632910 | 100 |
    Then I should see License validation error message should display: "Date landed must correspond to when the vessel was licensed"
    When I sign out external app completely


  @FI0-2593
  Scenario:4 - CC_Add conditional notification to Export summary page for Vessel Not Found
    Given I logged in to the MMO application as:
#     TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 63 44 40 95 06 97 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 50 21 97 26 66 09 | Testmmo90         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "VALIDATE CC GUIDANCE LINK REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "Postcode Search" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | European lobster (LBE) | Fresh | Whole | 03063291 - Whole lobsters "Homarus spp.", fresh or chilled |
    #And I should see the vessel not found message "If the vessel you need cannot be found, search for and select 'Vessel not found (N/A)'."
    And add exporter 1 landing details as follows:
      | 22/02/2021 | N/A |European lobster (LBE), Fresh, Whole, 03063291| 100 |
#      | 19/01/2020 | Vessel not found (N/A) | 100 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
       And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
   # Then I should see the message related to invalid vessel "Contact support on 0330 159 1989 to replace your Vessel name or PLN entries of 'Vessel not found (N/A)'."
    When The User submits the document
    Then I should see the error message displayed about Vessel not found
    And I sign out external app completely


  Scenario:5 - Adding multiple species, then cancelling the one of them from Landing details page
    Given I logged in to the MMO application as:
#     TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 70 37 40 09 22 41 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 50 21 97 26 66 09 | Testmmo90         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "Remove added Species from Landing page Reference" to the catch certificate
    And Continue my "Create a UK catch certificate" with "Postcode Search" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 3 species and remove 1 species from the table
      | Pacific chub mackerel (MAS) | Fresh | Whole    | 03024400 - Fresh or chilled mackerel "Scomber scombrus, Scomber australasicus, Scomber japonicus" |
      | Atlantic cod (COD) | Fresh | Filleted | 03044410 - Fresh or chilled fillets of cod "Gadus morhua, Gadus ogac, Gadus macrocephalus" and of Boreogadus saida |
      | Splendid alfonsino (BYS) | Fresh | Whole    | 03028990 - Fresh or chilled fish, n.e.s.|
    And add exporter 2 landing details as follows:
      | 13/02/2021| WIRON 5 |Atlantic cod (COD), Fresh, Filleted, 03044410   | 200.00 |
      | 02/07/2021 | WIRON 5 |Splendid alfonsino (BYS), Fresh, Whole, 03028990 | 120    |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
#    And I enter a Transport type as: "Container vessel"
       And I enter a Catch Transport type: "Container vessel"
      | NAT | REG | DEST |
    When The User submits the document
    Then I sign out external app completely



  Scenario:6 - Create draft CC documents with future landing dates - up to and including 7 days in advance - NR028
    Given I logged in to the MMO application as:
#     TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 94 69 14 79 94 53 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 50 21 97 26 66 09 | Testmmo90         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-CREATE CC UPTO 7 DAYS - FUTURE DATE REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "Postcode Search" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | Atlantic cod (COD) | Fresh | Whole | 03025110 - Fresh or chilled cod "Gadus morhua" |
    And add 1 landing details with future date of 5 as follows:
      | WIRON 5 | Atlantic cod (COD), Fresh, Whole, 03025110 | 30 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
    And I enter a Catch Transport type: "Container vessel"
      | NAT | REG | DEST |
    When The User submits the document
    Then I should see the error validations messages on Summary page "Submitted catch certificates cannot contain landing dates in the future"
    When I sign out external app completely


  Scenario:7 - Validate 3C or 3D validation rule first then followed by future date or invalid date validations
    Given I logged in to the MMO application as:
#     TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 26 62 89 45 29 13 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 50 21 97 26 66 09 | Testmmo90         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-3C or 3D VALIDATIONS REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "Postcode Search" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | Atlantic cod (COD) | Fresh | Whole | 03025110 - Fresh or chilled cod "Gadus morhua" |
    And add exporter 1 landing details as follows:
      | 01/03/2019 | BRD123 | Atlantic cod (COD), Fresh, Whole, 03025110 | 200 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
       And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    Then I should see the error validations messages
    When I click on change vessel link from summary page
    When I add future date or invalid vessel landing
      | BRD123 | Atlantic cod (COD), Fresh, Whole, 03025110 | 99 |
    When The User submits the document
    Then I should see the error validations messages on Summary page "Submitted catch certificates cannot contain landing dates in the future"
    When I sign out external app completely

  @FI0-2883 @smoke
  Scenario:8 - MMO user is able to submit the Catch certificate for up to 3 days in future date
    Given I logged in to the MMO application as:
#     TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 57 37 15 19 04 17 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 50 21 97 26 66 09 | Testmmo90         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "SUBMIT CC UPTO 3DAYS IN FUTURE DATE REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "Postcode Search" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | Atlantic cod (COD) | Fresh | Whole | 03025110 - Fresh or chilled cod "Gadus morhua" |
    And add 1 landing details with future date of 3 as follows:
      | CASTLEWOOD | Atlantic cod (COD), Fresh, Whole, 03025110 | 30 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
       And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    Then I sign out external app completely