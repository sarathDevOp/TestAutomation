Feature: Exporter can validate all the pages for PS journey
  As an Exporter, I am able to validate all the page for PS journey
  So that I can ensure that I have entered the valid and correct information


  Scenario:1- Exporter can validate all the pages for Processing Statements
    Given I logged in to the MMO application as:
      | 96 50 67 91 51 91 | Testmmo30 |
    When ECC user create "Create a UK processing statement" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "SIMPLE PS FLOW REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And I validate Add catch details
      | Enter the FAO code or species name | Enter the catch certificate number | Enter the total weight landed in kg | Enter the export weight in kg (before processing) | Enter the export weight in kg (after processing) |
    And I click on Save and Continue
    And I validate processing plant details
      | Enter the name of the person responsible for this consignment | Enter the plant approval number |
    And I validate Add health certificate details page
      | Enter Export Health Certificate number in the correct format | Enter the Export Health Certificate date |
    And I select the export destination country "France"
    And processing statement display correct data and I submit my application successfully
    When The User submits the document
    Then I sign out external app completely

  @StaticTextValidation
  Scenario: 2 - Check my catch certificate is active at submission - CC no longer active
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
    And I navigate back to Dashboard page
    When ECC user create "Create a UK processing statement" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "SIMPLE PS FLOW REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And Exporter add a 1 catch to the consignment as follows:
      | Yes | NA | Black scabbardfish (BSF) | 500 | 200 | 100 | No |
    And I click on Save and Continue
    And I add person responsible "capgemini" and plant approval number "456"
    Then The user selects the Processing plant details "Postcode Search" as follows
      | Processing Plant | LANGDON ROAD | SWANSEA | SA1 8QZ | United Kingdom |
    Then I click on Save and Continue
    And I complete health certificate details: certificate number "20/2/123456" and certificate date "12/06/2019"
    And I select the export destination country "Jersey"
    Then I copy the Processing statement number
    And  I navigate back to "Create a UK catch certificate" Dashboard page
    Then void the certificate
    Then I navigate back to Dashboard page
    Then ECC user navigates to "Create a UK processing statement" certificate
    Then the user continue his PS journey
    And The User submits the document
    Then Error message is displayed at the top of the page "The catch certificate entered is no longer valid"
    And Error message is displayed above the Catch certificate number field "The catch certificate entered is no longer valid"
    When User clicks on error message at the top of the page "The catch certificate entered is no longer valid"
    Then user remains on the "check-your-information" page
      Then I sign out external app completely

  @StaticTextValidation
  Scenario:3 - Exporter can validate error message for CC
    Given I logged in to the MMO application as:
      | 96 50 67 91 51 91 | Testmmo30 |
    When ECC user create "Create a UK processing statement" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "SIMPLE PS FLOW REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    Then Exporter validate error message for CC Add a catch certificate to this consignment page
      | Yes | European lobster (LBE) |
        Then I sign out external app completely


  @StaticTextValidation
  Scenario:4 - Exporter can validate error message for Species
    Given I logged in to the MMO application as:
      | 96 50 67 91 51 91 | Testmmo30 |
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
  And I navigate back to Dashboard page
  When ECC user create "Create a UK processing statement" certificate
  And I click on "Your reference (Optional)" link from Progress page
  And Add Reference "SIMPLE PS FLOW REFERENCE" to the catch certificate
  And Continue my "Create a UK processing statement" with "default" addresses
    | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes  (16041992)"
    Then Exporter validate error message for Species on Add a catch certificate to this consignment page
      | Yes | European lobster (LBE) |
    Then I sign out external app completely


