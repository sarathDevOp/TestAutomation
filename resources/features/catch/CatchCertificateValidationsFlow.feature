@Reg @StaticTextValidation
Feature: Exporter can validate all the pages for CC journey
  As an Application user, I am able to validate all the page for CC journey
  So that I can ensure that I have entered the valid and correct information

  Scenario:1- Exporter can validate all the pages for Catch certificate
    Given I logged in to the MMO application as:
#     TST Env Test Account
      | 50 21 97 26 66 09 | Testmmo90 |
#      PRE-PROD / PREMO Environment
#      | 50 21 97 26 66 09 | Testmmo90         |

    When ECC user validates "Create a UK catch certificate" dashboard page
    And exporter starts "Create a UK catch certificate"
    Then I validate the "Create a UK catch certificate" journey dashboard page
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
     | Large-eye dentex (DEL) | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s. |
    And I validate "Non Direct Landings" page with validation errors
     | 29/01/2022 |WIRON 5 | Large-eye dentex (DEL), Fresh, Whole, 03028990 | 1 |
    And I validate Whose waters page
    And I validate Export Destinations page "United Kingdom" and "Germany"
    And I validate Truck Transport type
      | Select how the export leaves the UK | Select yes if you have a road transport document to go with this export | Enter the nationality of vehicle | Enter the registration number | Enter the place the export leaves the UK | Enter the export date |
    Then The User submits the document
    And I validate the document number from "ONLINE" Confirmation page
    And I sign out external app completely
