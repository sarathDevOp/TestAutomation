@Reg_11
Feature: Exporter can validate all the pages for PS journey in both English & Welsh Language
  As an exporter,
  I can view any errors shown on the page in the language I have chosen
  So that I can best understand the service.

  Background: Login to Government gateway
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | psCompanyUser     | psCompanyPassword |
#      | 93 83 38 84 70 70 | TestAuto12 |
        | 42 11 75 76 48 57 | TestAuto12 |

  Scenario:1 - Exporter can validate all the pages Processing Statements for English | Welsh toggle
    When ECC user validates dashboard page
    When exporter starts "Create a UK processing statement"
    And I validate the "Create a UK processing statement" journey dashboard page
    And I validate the language toggle
    When I click on "Welsh" language toggle
    Then I validate "Welsh" content for "Create a UK processing statement"
    And I click on "English" language toggle
    When I start creating "Create a UK processing statement" certificate
   When I click on "Your reference (Optional)" link from Progress page
   And Add Reference "PS-VALIDATIONS-REFERENCE" to the catch certificate
   And Continue my "Create a UK processing statement" with "default" addresses
     | Automation Testing | Automation City | SA6 8PP | United Kingdom |
   And I validate commodity code description page "Enter a description and commodity code"
   And I validate Add catch details
     | Enter the FAO code or species name | Enter the catch certificate number | Enter the total weight landed in kg | Enter the export weight in kg (before processing) | Enter the export weight in kg (after processing) |
   And I validate processing plant details
     | Enter the name of the person responsible for this consignment | Enter the plant approval number |
  Then The user validates Processing plant address details
   And I validate Add health certificate details page
     | Enter Export Health Certificate number in the correct format | Enter a real date in the dd/mm/yyyy format |
   And I select the export destination country "France"
   And processing statement display correct data and I submit my application successfully
   When The User submits the document
    Then I sign out external app completely
