#@Reg
Feature: Exporter can validate all the pages for CC/PS/SD journeys
  As an Application user I am able to validate all the page for CC/PS/SD journey

#  Background: Login to Government gateway
#    Given I logged in to the MMO application as:
##      TST Env Test Account
##      | ccCompanyUser     | ccCompanyPassword |
#      | 55 29 87 07 03 28 | TestAuto12 |


  Scenario:1- Exporter can validate all the pages for Catch certificate in Welsh Language
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 55 29 87 07 03 28 | TestAuto12 |
    When ECC user validates "Create a UK catch certificate" dashboard page
    When exporter starts "Create a UK catch certificate"
    And I validate the "Create a UK catch certificate" journey dashboard page
    When I start creating "Create a UK catch certificate" certificate
    And I validate Landing entry page and "Continue" with "Manual entry" option
    Then I should be on Progress page and I validate "Manual entry" journey option
      | You have completed 0 of 7 required sections. | OPTIONAL | INCOMPLETE | INCOMPLETE | CANNOT START YET | INCOMPLETE | INCOMPLETE | INCOMPLETE | CANNOT START YET |
    When I click on "Your reference (Optional)" link from Progress page
    And I validate "Create a UK catch certificate" Add reference page
    And Add Reference "CATCH CERTIFICATE VALIDATIONS REFERENCE" to the catch certificate
    And I validate "Create a UK catch certificate" exporter details page
    And Continue my "Create a UK catch certificate" with "Postcode Search" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter validates Species page with 1 species
      | DEL | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s. |
    And I validate "Non Direct Landings" page with validation errors
      | 29/01/2022 | WIRON 5 | Large-eye dentex (DEL), Fresh, Whole, 03028990 | 1 |
    And I validate Whose waters page
    And I validate Export Destinations page "United Kingdom" and "Germany"
    And I validate Truck Transport type
      | Select how the export leaves the UK | Select yes if you have a road transport document to go with this export | Enter the nationality of vehicle | Enter the registration number | Enter the place the export leaves the UK | Enter the export date |
    Then The User submits the document
    And I validate the document number from "ONLINE" Confirmation page
    And I sign out external app completely


  Scenario:2 - Exporter can validate all the pages for Processing Statements in Welsh Language
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 55 29 87 07 03 28 | TestAuto12 |
    And I click on "English" language toggle
    When ECC user validates dashboard page
    And I click on "Welsh" language toggle
    Then ECC user validates dashboard page in "Welsh" language
    And I click on "English" language toggle
    When exporter starts "Create a UK processing statement"
    Then I validate the "Create a UK processing statement" journey dashboard page in "English"
    And I click on "Welsh" language toggle
    Then I validate the "Create a UK processing statement" journey dashboard page in "Welsh"
    And I click on "English" language toggle
#    Then I validate the "Create a UK processing statement" journey dashboard page
#    And I click on "Welsh" language toggle
    When I start creating "Create a UK processing statement" certificate
#    Then I validate Progress "Create a UK processing statement" in "Welsh" language
#    When I click on "Your reference (Optional)" link from Progress page
    When I click on "Your reference (Optional)" link from Progress page for "Create a UK processing statement"
    And Add Reference "PS-VALIDATIONS-REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I validate commodity code description page "Enter a description and commodity code"
    And I validate Add catch details
      | Enter the FAO code or species name | Enter the catch certificate number | Enter the total weight landed in kg | Enter the export weight in kg (before processing) | Enter the export weight in kg (after processing) |
    And I validate processing plant details
      | Enter the name of the person responsible for this consignment | Enter the plant approval number |
    Then The user validates Processing plant address details
    And I click on "Welsh" language toggle
    And I validate Add health certificate details page in "Welsh" language
    And I click on "English" language toggle
    And I validate "Create a UK processing statement" export destination page in "English"
    And I click on "Welsh" language toggle
    And I validate "Create a UK processing statement" export destination page in "Welsh"
    And I select the export destination country "France"
    And I click on "English" language toggle
    And processing statement display correct data and I submit my application successfully
    When The User submits the document
    Then I sign out external app completely


  Scenario:3 - Exporter can validate all the pages for Storage Documents in Welsh Language
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 55 29 87 07 03 28 | TestAuto12 |

    When ECC user validates dashboard page
    And exporter starts "Create a UK storage document"
    Then I validate the "Create a UK storage document" journey dashboard page
    When I start creating "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT VALIDATIONS REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    Then I validate add products page
      | Enter the FAO code or product name | Enter the commodity code | Enter the export weight in kg | Enter the date product entered the UK | Enter the place product entered the UK | Enter the transport details | Enter the document number | Enter the weight on the document in kg |
    And I validate storage facilities with postcode "SA6 8PP"
    And I validate "Create a UK storage document" export destination page in "English"
    And I select the export destination country "France"
    And I validate transport details page
      | Select how the export leaves the UK | Select yes if you have a road transport document to go with this export | Enter the nationality of vehicle | Enter the registration number | Enter the place the export leaves the UK | Enter the export date |
    And I enter a Storage Transport type as: "Truck"
    When The User submits the document
    Then I sign out external app completely
