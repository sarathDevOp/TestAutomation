@Reg  @TESTJava21
Feature: FES Export can create a Catch Certificate using a Manual entry flow
  As an Exporter, I am able to create Catch Certificates with Manual entry option
  So that, I can adding transport details, which are appropriate


  Scenario:1 - Create a simple Catch Certificate
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 14 48 94 74 31 49 | Testaccount1 |
#     PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1 |
    When ECC user create "Create a UK catch certificate" certificate
    And I select "Manual entry" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-SIMPLE CATCH CERTIFICATE REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | Black scabbardfish (BSF) | Fresh | Gutted | 03028990 - Fresh or chilled fish, n.e.s. |
    And add exporter 1 landing details as follows:
      | 22/12/2022 | WIRON 5 | Black scabbardfish (BSF), Fresh, Gutted, 03028990 | 10 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    And The User submits the document
    Then I validate the document number from "ONLINE" Confirmation page
    And I sign out external app completely

  Scenario:2 - Adding multiple species or products and landings
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
#      | 68 98 88 44 10 19 | Testaccount1 |
#     PRE-PROD / PREMO Environment
      | 41 76 37 65 65 02 | Testaccount1 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-VERIFY SUMMARY PAGE TOTALS REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 3 species with their state and presentation as follows:
      | Black scabbardfish (BSF) | Fresh | Gutted | 03028990 - Fresh or chilled fish, n.e.s. |
      | Atlantic cod (COD) | Fresh | Gutted | 03025110 - Fresh or chilled cod "Gadus morhua"|
     | Atlantic herring (HER) | Fresh | Gutted  | 03024100 - Fresh or chilled herring "Clupea harengus, clupea pallasii" |
    And add 3 landing details and get total weight on the CC
      | 23/12/2022| NN470 |Black scabbardfish (BSF), Fresh, Gutted, 03028990 | 10.02 |
      | 23/12/2022| NN470 | Atlantic cod (COD), Fresh, Gutted, 03025110 | 10.01 |
      | 23/12/2022| NN470 | Atlantic herring (HER), Fresh, Gutted, 03024100 | 09.05 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
#    And I enter a Transport type as: "Container vessel"
    And I enter a Catch Transport type: "Container vessel"
      | NAT | REG | DEST |
    #Then The user verifies the total weights on Summary page
    And The User submits the document
    And I sign out external app completely


  Scenario:3 - Adding 1 product and multiple landings
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 64 13 64 29 40 61 | Testaccount1 |
#     PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-ADD MULTIPLE LANDINGS REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | Atlantic cod (COD) | Fresh | Filleted | 03044410 - Fresh or chilled fillets of cod "Gadus morhua, Gadus ogac, Gadus macrocephalus" and of Boreogadus saida |
    And exporter add 2 landings details as follows:
      | 13/08/2020 | NN470 | Atlantic cod (COD), Fresh, Filleted, 03044410 | 90.99 |
      | 02/09/2020 | NN470 | Atlantic cod (COD), Fresh, Filleted, 03044410| 80    |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "Guernsey" to "Germany"
    And I enter a Transport type as: "Train"

    And The User submits the document
    Then I sign out external app completely


  Scenario:4 - Adding multiple species, then remove one of the products added
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 87 55 12 71 09 90 | Testaccount1 |
#     PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1 |

    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-ADD SPECIES - CANCEL FIRST REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 3 species and remove 1 species from the table
      | Pacific chub mackerel (MAS) | Fresh | Whole     | 03024400 - Fresh or chilled mackerel "Scomber scombrus, Scomber australasicus, Scomber japonicus"    |
      | Blue shark (BSH) | Fresh | Fins only | 03029200 - Fresh or chilled shark fins   |
      | Splendid alfonsino (BYS) | Fresh | Whole     | 03028990 - Fresh or chilled fish, n.e.s. |
    And add exporter 2 landing details as follows:
      | 01/02/2021 | WK674   | Blue shark (BSH), Fresh, Fins only, 03029200  | 90.00 |
      | 02/07/2020 | Wiron 5 | Splendid alfonsino (BYS), Fresh, Whole, 03028990| 120   |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Jersey"
    And I enter a Transport type as: "Container vessel"
    Then I sign out external app completely

  Scenario:5 - Adding multiple landings, then edit the first Vessel on the list
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 85 95 43 01 98 00 | TestAuto12 |
#     PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-EDIT ADDED VESSEL REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add authorised products 1 as:
      | Common prawn (CPR) | Fresh | Whole | 03063690 - Shrimps and prawns, whether in shell or not, live, fresh or chilled (excl. "Pandalidae" and "Crangon") |
    And I enter 2 landings and edit the first landing vessel "WIRON 6"
      | 01/09/2019 | Wiron 5 | Common prawn (CPR), Fresh, Whole, 03063690 | 34 |
      | 11/06/2019 | LN454   | Common prawn (CPR), Fresh, Whole, 03063690| 10 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "Guernsey" to "Jersey"
    And I enter a Transport type as: "Plane"
    And The User submits the document
    Then I sign out external app completely


  Scenario:6 - Fish exporter cannot set future landing date more than seven days
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 66 94 73 85 40 88 | Testaccount1 |
#     PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-FUTURE DATE LANDING REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add authorised products 1 as:
      | Edible crab (brown crab) (CRE) | Fresh | Whole | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled |
    And add exporter 1 landing details with future date of 10 as follows:
      | CASTLEWOOD | Edible crab (brown crab) (CRE), Fresh, Whole, 03063310 | 30 |
    Then Error message should display: "Date landed can be no more than 7 days in the future"
    And I click error message link to fill the correct landing date
    And I sign out external app completely
