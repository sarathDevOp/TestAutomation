@WAFRules
Feature: As a FES external application user WAF rules validations
  I want to be shown a forbidden page when there is a 403/WAF blocking issue
  So that I am made aware there has been an error


  Scenario:1 - Validating CC journey for the 403 Forbidden error for non-DL journey
    Given I logged in to the MMO application as:
#      TST Env Test Account
      | 85 50 24 64 15 69 | TestAuto12 |
    When ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "'+OR+1=1'" to the catch certificate
    And I validate forbidden page
    And Add Reference "CC-VALIDATE WAF RULES REFERENCE" to the catch certificate
    Then I should be on "Create a UK catch certificate" exporter details page
    When I validate "Create a UK catch certificate" exporter details against WAF rules
      | '+OR+1=1' | '+AND+1=1' |
    And I validate forbidden page
    And Continue my "Create a UK catch certificate" with "Postcode Search" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | HER | Fresh | Whole | 03024100 - Fresh or chilled herring |
    When I validate Non Direct landing page with WAF rules
      | Atlantic herring (HER), Fresh, Whole, 03024100 | '+AND+1=1' | '+OR+1=1 | '+OR+1=1' | '+AND+1=1' | '+OR+1=1' | <!Script> |
    Then I validate forbidden page
    And I click on "Landings details" link from Progress page
    And add exporter 1 landing details as follows:
      | 05/09/2020 | NN470 | Atlantic herring (HER), Fresh, Whole, 03024100 | 99 |
    And I select whose waters options
      | Other | '+OR+1=1' |
    And I validate forbidden page
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
    And I validate Catch Transport details with WAF rules for: "Plane"
      | '+OR+1=1' | '+AND+1=1' | '+AND+1=1' |
    Then I validate forbidden page
    When I navigate back to previous page
    And I validate Catch Transport details with WAF rules for: "Train"
      | '+OR+1=1' | '+AND+1=1' | '+AND+1=1' |
    Then I validate forbidden page
    When I navigate back to previous page
    And I validate Catch Transport details with WAF rules for: "Container vessel"
      | '+OR+1=1' | '+AND+1=1' | '+AND+1=1' |
    Then I validate forbidden page
    When I navigate back to previous page
    And I validate Catch Transport details with WAF rules for: "Truck"
      | '+OR+1=1' | '+AND+1=1' | '+AND+1=1' |
    Then I validate forbidden page
    When I navigate back to previous page
    And I navigate back to previous page
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    And I sign out external app completely


  Scenario:2 - Validating CC Direct Landing journey for the 403 Forbidden error
    Given I logged in to the MMO application as:
#      TST Env Test Account
      | 85 50 24 64 15 69 | TestAuto12 |
    When ECC user create "Create a UK catch certificate" certificate
    And I select "Direct Landing" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-VALIDATE WAF RULES DL REFERENCE" to the catch certificate
    Then I should be on "Create a UK catch certificate" exporter details page
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | HER | Fresh | Whole | 03024100 - Fresh or chilled herring |
    And add exporter adds Direct landing details as follows:
      | 13/12/2019 | Wiron 5 | <!Script> |
    And I validate forbidden page
    And I click browser back link
    And add exporter adds Direct landing details as follows:
      | 10/09/2021 | Wiron 5 | 90 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
    When The User submits the document
    And I sign out external app completely


  Scenario:3 - Validating PS journey for the 403 Forbidden error
    Given I logged in to the MMO application as:
#      TST Env Test Account
      | 85 50 24 64 15 69 | TestAuto12 |
    When ECC user create "Create a UK processing statement" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "'+OR+1=1'" to the catch certificate
    And I validate forbidden page
    And Add Reference "PS-VALIDATE WAF RULES REFERENCE" to the catch certificate
    Then I should be on "Create a UK processing statement" exporter details page
    When I validate "Create a UK processing statement" exporter details against WAF rules
      | '+OR+1=1' | '+AND+1=1' |
    And I validate forbidden page
    And Continue my "Create a UK processing statement" with "Postcode Search" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "'+OR+1=1'"
    And I validate forbidden page
    And I add a commodity code description as "Atlantic code fishcakes"
    And I enter the Catch details "ACO" and "'+OR+1=1'"
    And I validate forbidden page
    And I enter the Catch details "ACO" and "500"
    And I enter the Catch weights for WAF rules
      | '+OR+1=1' | '+OR+1=1' | '+OR+1=1' |
    And I validate forbidden page
    And I enter the Catch weights for WAF rules
      | 500 | 200 | 100 |
    And I continue my consignment with "No" option
    And I add person responsible "'+OR+1=1'" and plant approval number "'+OR+1=1'"
    And I validate forbidden page
    And I add person responsible "capgemini" and plant approval number "456"
    Then The user selects the Processing plant details "Postcode Search" as follows
      | Processing Plant | LANGDON ROAD | SWANSEA | SA1 8QZ | United Kingdom |
    And I complete health certificate details: certificate number "'+OR+1=1'" and certificate date "'+OR+1=1'/'+OR+1=1'/'+OR+1=1'"
    And I validate forbidden page
    And I complete health certificate details: certificate number "20/2/123456" and certificate date "01/01/2022"
    And I select the export destination country "Jersey"
    When The User submits the document
    And I sign out external app completely



  Scenario:4 - Validating SD journey for the 403 Forbidden error
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 85 50 24 64 15 69 | TestAuto12 |
    When ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "'+OR+1=1'" to the catch certificate
    Then I validate forbidden page
    When Add Reference "SD-VALIDATE WAF RULES REFERENCE" to the catch certificate
    And I validate "Create a UK storage document" exporter details against WAF rules
      | '+OR+1=1' | '+AND+1=1' |
    Then I validate forbidden page
    When Continue my "Create a UK storage document" with "Postcode Search" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add WAF rules 1 products to consignment as:
      | HER | '+OR+1=1' | '+AND+1=1' | 16/04/2019 | '+OR+1=1' | '+OR+1=1' | '+OR+1=1' |
    Then I validate forbidden page
    When I add 1 products to consignment as:
      | HER | 457123 | 5675 | 16/04/2019 | Liverpool | 56yti | 156567 | No |
    And add 1 storage facilities WAF Rules with "Postcode Search" follows:
      | '+OR+1=1' |
    Then I validate forbidden page
    When add 1 storage facilities with "Postcode Search" follows:
      | Facility | Lancaster House Hampshire Ct | Newcastle upon | SA6 8PP | No |
    And I select the export destination country "Jersey"
    And I validate Storage Transport details with WAF rules for: "Plane"
      | '+OR+1=1' | '+AND+1=1' | '+AND+1=1' | 15/03/2022 |
    Then I validate forbidden page
    When I navigate back to previous page
    And I validate Storage Transport details with WAF rules for: "Train"
      | '+OR+1=1' | '+AND+1=1' | '+AND+1=1' | 15/03/2022 |
    Then I validate forbidden page
    When I navigate back to previous page
    And I validate Storage Transport details with WAF rules for: "Container vessel"
      | '+OR+1=1' | '+AND+1=1' | '+AND+1=1' | 15/03/2022 |
    Then I validate forbidden page
    When I navigate back to previous page
    And I validate Storage Transport details with WAF rules for: "Truck"
      | '+OR+1=1' | '+AND+1=1' | '+AND+1=1' | 15/03/2022 |
    Then I validate forbidden page
    When I navigate back to previous page
    And I navigate back to previous page
    And I enter a Storage Transport type: "Truck"
      | NAT | REG | DEST | 15/03/2022 |
    When The User submits the document
    And I sign out external app completely


  @FI0-2883 @smoke @Reg
  Scenario:5 - MMO user is able to submit the Catch certificate with vessel like dusty bin - quotes in names - And and Or in names - Special characters
    Given I logged in to the MMO application as:
#     TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 31 49 15 96 13 30 | Testaccount1 |
#      PRE-PROD / PREMO Environment
#      | 50 21 97 26 66 09 | Testmmo90         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-VALIDATE SPECIAL CHARS REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "Special Chars" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | NOT | Fresh | Gutted, headed and tailed | 03028990 - Fresh or chilled fish, n.e.s. |
    And add exporter 1 landing details as follows:
      | 13/05/2021 | dusty bin | Patagonian rockcod (NOT), Fresh, Gutted, headed and tailed, 03028990 | 10 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
    And I enter a Transport type as: "Truck"
    When The User submits the document
    Then I sign out external app completely