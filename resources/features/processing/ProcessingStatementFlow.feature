@Reg1212
Feature: Processing Statement User Flow
  As a user,I want to be able to create a processing statement,
  So that I have logged my processing activity


  Scenario:1 - Create a simple Processing Statement
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 96 50 67 91 51 91 | Testmmo30 |
#      PRE-PROD / PREMO Environment
#      | 78 72 64 04 59 26 | Testaccount1      |
    When ECC user create "Create a UK processing statement" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "SIMPLE PS FLOW REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And Exporter add a 1 catch to the consignment as follows:
     |No | NA | Coloconger raniceps (ACO) | 500 | 200 | 100 | No |
    And I click on Save and Continue
    And I add person responsible "capgemini" and plant approval number "456"
    Then The user selects the Processing plant details "Postcode Search" as follows
      | Processing Plant | LANGDON ROAD | SWANSEA | SA1 8QZ | United Kingdom |
    Then I click on Save and Continue
    And I complete health certificate details: certificate number "20/2/123456" and certificate date "12/06/2019"
    And I select the export destination country "Jersey"
    When The User submits the document
    Then I sign out external app completely


  Scenario:2 - Adding another catch to the consignment
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 43 51 07 74 91 18 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 78 72 64 04 59 26 | Testaccount1      |
    And ECC user create "Create a UK processing statement" certificate
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "PS-ADD MULTIPLE CATCH REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And Exporter add a 2 catch to the consignment as follows:
      | No | NA | Japanese abalone (ABJ) | 3000 | 2000 | 1000 | Yes |
      | No | NA | Spanish hogfish (BDR) | 1000  | 900  | 700  | No  |
  And I click on Save and Continue
    And I add person responsible "capgemini" and plant approval number "456"
    Then The user selects the Processing plant details "Postcode Search" as follows
      | Processing Plant | LANGDON ROAD | SWANSEA | SA1 8QZ | United Kingdom |
  Then I click on Save and Continue
    And I complete health certificate details: certificate number "20/2/123456" and certificate date "12/06/2019"
    And I select the export destination country "Jersey"
    When The User submits the document
    Then I sign out external app completely


  Scenario:3 - Adding multiple species to the consignment and Edit species
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 57 25 46 35 01 52 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 78 72 64 04 59 26 | Testaccount1      |
    And ECC user create "Create a UK processing statement" certificate
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "PS-REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And Exporter add a 2 catch to the consignment as follows:
      | No | NA | Shiba shrimp (SHI) | 200   | 200   | 170   | Yes |
      | No | NA | Spanish hogfish (BDR) | 90.99 | 90.99 | 70.99 | No  |
    And Exporter edit 1 catch to the consignment as follows:
      | No | NA | Coloconger raniceps (ACO) | 1900 | 170 | 110 | No |
    When I sign out external app completely


  Scenario:4 - Change Processing Plant Details - Plant Approval Number
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 74 87 07 73 18 25 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 78 72 64 04 59 26 | Testaccount1      |
    And ECC user create "Create a UK processing statement" certificate
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "PS-REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Stout moray (MMO)"
    And Exporter add a 1 catch to the consignment as follows:
     | No | NA | Stout moray (MMO) | 500 | 200 | 100 | No |
    And I click on Save and Continue
    And I add person responsible "capgemini" and plant approval number "456"
    Then The user selects the Processing plant details "Postcode Search" as follows
      | Processing Plant | LANGDON ROAD | SWANSEA | SA1 8QZ | United Kingdom |
    Then I click on Save and Continue
    And I complete health certificate details: certificate number "20/2/123456" and certificate date "12/06/2019"
    And I select the export destination country "Jersey"
    And I made changes to my desire option from summary page by click link
    And I add person responsible "capgemini" and plant approval number "45699"
    When The User submits the document
    And I sign out external app completely


  Scenario:5 - Change Processing Plant Details -- Health Certificate
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 42 85 73 10 18 39 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 78 72 64 04 59 26 | Testaccount1      |
    And ECC user create "Create a UK processing statement" certificate
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "PS-REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And Exporter add a 1 catch to the consignment as follows:
     | No | NA | Rudderfish (CEO) | 323 | 323 | 100 | No |
    And I click on Save and Continue
    And I add person responsible "capgemini" and plant approval number "456"
    Then The user selects the Processing plant details "Postcode Search" as follows
      | Processing Plant | LANGDON ROAD | SWANSEA | SA1 8QZ | United Kingdom |
    And I click on Save and Continue
    And I complete health certificate details in future 6 days
    And I select the export destination country "Jersey"
    Then The User submits the document
    And I validate health certificate date in "English" language
    And I made change by click health certificate number link
    And I edit health certificate details: certificate number "20/9/123456" and certificate date "12/06/2019"
    When The User submits the document
    Then I sign out external app completely


  Scenario:6 - Adding multiple species to the consignment and remove unwanted species
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 19 58 46 11 27 12 | TestAuto12 |
#      PRE-PROD / PREMO Environment
#      | 78 72 64 04 59 26 | Testaccount1      |
    And ECC user create "Create a UK processing statement" certificate
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "PS-REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And Exporter add a 2 catch to the consignment as follows:
      | No | NA | Shiba shrimp (SHI) | 200 | 200 | 170 | Yes |
      | No | NA | Atlantic cod (COD) | 90  | 90  | 70  | No  |
    And exporter removed 1 catch from the consignment and signOut
    When I sign out external app completely



  Scenario:7 - Validate user can enter 52 chars Catch certificate length for Processing Statement
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 94 20 24 88 99 17 | TestAuto12         |
    And ECC user create "Create a UK processing statement" certificate
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "54 chars Catch certificate Reference" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And Exporter add a 1 catch details with more than 52 chars for CC
      | Coloconger raniceps (ACO) | 500 | 200 | 100 | No |
    Then I click on Save and Continue
    And I sign out external app completely
