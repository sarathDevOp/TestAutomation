@Reg
Feature: FES Exporter Storage documents User Flow
  As an exporter, I want to create a the Storage Documents,
  So that I can export fish that has been caught by a 3rd country vessel and stored in the UK.

  @smoke
  Scenario:1 - Create a simple Storage Document
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
#      | 76 79 14 15 89 28 | Testing300             |
      | 96 50 67 91 51 91 | Testmmo30 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 1 products to consignment as:
      | HER | 457123 | 5675 | 16/04/2019 | Liverpool | 56yti | 156567 | No |
    And add 1 storage facilities with "Postcode Search" follows:
      | Facility | Lancaster House Hampshire Ct | Newcastle upon | SA6 8PP | No |
    And I select the export destination country "Jersey"
    And I enter a Storage Transport type as: "Truck"
    When The User submits the document
    Then I sign out external app completely

  @smoke
  Scenario:2 - Create a storage note for exporter with multiple catch and single storage facility
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
      | 12 22 10 06 65 50 | TestAuto12 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 2 products to consignment as:
      | HER | 457123 | 5675 | 16/04/2019 | Liverpool | 56yti | 156567 | Yes |
      | BSS | 457123 | 5675 | 16/04/2019 | Liverpool | 56yti | 156567 | No  |
    And add 1 storage facilities with "Postcode Search" follows:
      | Facility | Lancaster House Hampshire Ct | Newcastle upon | SA6 8PP | No |
    And I select the export destination country "Jersey"
    And I enter a Storage Transport type as: "Plane"
    When The User submits the document
    Then I sign out external app completely


  Scenario:3 - Edit added product in the consignment
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
      | 80 91 83 53 43 26 | TestAuto12 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 1 product to consignment
      | BRO | 457123 | 5675.99 | 16/04/2019 | Liverpool | 56yti | 156567.50 |
    And I edit the consignment products with following details:
      | MMO | 4571232563 | 5675 | 23/08/2019 | Hull | 456ffgr | 2500 | No |
    And add 1 storage facilities with "Postcode Search" follows:
      | Facility | Lancaster House Hampshire Ct | Newcastle upon | SA6 8PP | No |
    And I select the export destination country "Jersey"
    And I enter a Storage Transport type as: "Train"
    When The User submits the document
    Then I sign out external app completely

  Scenario:4 - Add two product and remove one from the consignment
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
      | 14 28 70 80 39 50 | TestAuto12 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 2 products to consignment and remove 2 product:
      | LBE | 457123 | 5675 | 16/04/2019 | Liverpool | 56yti | 156567 | Yes |
      | BRO | 457123 | 5675 | 16/04/2019 | Liverpool | 56yti | 156567 | No  |
    And add 1 storage facilities with "Postcode Search" follows:
      | Facility | Lancaster House Hampshire Ct | Newcastle upon | SA6 8PP | No |
    And I select the export destination country "Jersey"
    And I enter a Storage Transport type as: "Container vessel"
    When The User submits the document
    Then I sign out external app completely


  Scenario:5 - Should be able to generate Storage Document for an exporter with multiple storage facility
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
      | 45 98 36 15 11 79 | TestAuto12 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 2 products to consignment as:
      | LBE | 457123 | 100 | 16/04/2021 | Liverpool | 56yti | 100 | Yes |
      | BRO | 123457 | 90  | 16/02/2022 | Dover     | 56yti | 100 | No  |
    And add 2 storage facilities with "Postcode Search" follows:
      | Facility  | Lancaster House Hampshire Ct | Newcastle upon | SA6 8PP | Yes |
      | Facility1 | Lancaster House Hampshire Ct | Newcastle upon | SA6 8PP | No  |
    And I select the export destination country "Jersey"
    And I enter a Storage Transport type as: "Train"
    Then I sign out external app completely



  Scenario:6 - Should be able to edit storage note details from the summary page
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
      | 89 20 59 26 30 30 | TestAuto12 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 1 products to consignment as:
      | BDE | 457123 | 720 | 16/04/2019 | Liverpool | 56yti | 1227 | No |
    And add 1 storage facilities with "Postcode Search" follows:
      | Facility | Lancaster House Hampshire Ct | Newcastle upon | SA6 8PP | No |
    And I select the export destination country "Jersey"
    And I enter a Storage Transport type as: "Container vessel"
    When I edit "Facility 1" from summary page and check "No" to add another storage facility"
    When I sign out external app completely

  @FIO-2073
  Scenario:7 - Validate user can enter 54 chars Catch certificate length for Storage Document
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 43 55 43 32 50 85 | Testmmo33          |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "SD 54 CHARS VALIDATION REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 1 products details with more than 54 chars for CC to consignment as:
      | BFR | 457457 | 5675 | 16/04/2019 | Liverpool | 56yti | 156567 | No |
    When I sign out external app completely