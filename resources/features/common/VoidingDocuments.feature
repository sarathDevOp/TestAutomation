@Reg
Feature:FES Exporters are able to void their own CC, PS & SD documents
  As an exporter, I want to void a certificate I have created
  So that I can reuse the data to create another certificate


  @smoke
  Scenario:1- Exporter can void their own Catch certificate
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 37 74 42 27 28 47 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 19 58 77 94 43 89 | Testaccount1      |

    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "VOID CATCH CERTIFICATE REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | COD | Fresh | Whole | 03025110 - Fresh or chilled cod "Gadus morhua" |
    And add exporter 1 landing details as follows:
#      | 01/09/2020 | Jocalinda (RX1) | 50 |
      | 01/03/2022 | WIRON 6 | Atlantic cod (COD), Fresh, Whole, 03025110 | 50 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    And I validate "Create a UK catch certificate" confirmation page
    And I navigate back to "Create a UK catch certificate" Dashboard page
    And Exporter void the certificate created from dashboard page
    Then I sign out external app completely


  Scenario:2- Exporter can void their own Processing Statement
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 22 13 93 71 01 70 | Testing300 |
#      PRE-PROD / PREMO Environment
#      | 12 24 51 87 12 83 | Testaccount1      |

    When ECC user create "Create a UK processing statement" certificate
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "VOID PROCESSING STATEMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And Exporter add a 1 catch to the consignment as follows:
      | CEO | 500 | 200 | 100 | No |
    And I add person responsible "capgemini" and plant approval number "456"
    Then The user selects the Processing plant details "Postcode Search" as follows
      | Processing Plant | LANGDON ROAD | SWANSEA | SA1 8QZ | United Kingdom |
    And I complete health certificate details: certificate number "20/2/123456" and certificate date "12/06/2019"
    And I select the export destination country "Jersey"
#    And I click on "Submit to Check your Answers" button to continue to submit my processing statement
    When The User submits the document
    And I validate "Create a UK processing statement" confirmation page
    And I navigate back to "Create a UK processing statement" Dashboard page
    And Exporter void the certificate created from dashboard page
    And I sign out external app completely


  Scenario:3- Exporter can void their own Storage document
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
      | 55 87 94 99 21 37 | Testmmo33              |
#      PRE-PROD / PREMO Environment
#      | 50 39 43 95 12 41 | Testaccount1 |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "VOID STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 1 products to consignment as:
      | BFR | 4570989 | 50 | 16/04/2021 | Liverpool | 56yti | 9999999 | No |
    And add 1 storage facilities with "Postcode Search" follows:
      | Facility | Lancaster House Hampshire Ct | Newcastle upon | SA6 8PP | No |
    And I select the export destination country "Jersey"
    And I enter a Storage Transport type as: "Truck"
    When The User submits the document
    And I validate "Create a UK storage document" confirmation page
    And I navigate back to "Create a UK storage document" Dashboard page
    And Exporter void the certificate created from dashboard page
    And I sign out external app completely