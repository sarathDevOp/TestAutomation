@Reg @StaticTextValidation
Feature: Exporter can validate all the pages for SD journey
  As an Application user, I am able to validate all the page for SD journey
  So that I can ensure that I have entered the valid and correct information

  Background: Login to Government gateway
    Given I logged in to the MMO application as:
##      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 82 62 33 73 87 02 | TestAuto12 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
 @Test1432
  Scenario:1 - Exporter can validate all the pages for Storage Documents
    When ECC user validates dashboard page
    And exporter starts "Create a UK storage document"
    Then I validate the "Create a UK storage document" journey dashboard page
    When I start creating "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT VALIDATIONS REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    Then I validate add products page New
      | Enter the FAO code or product name | Enter the commodity code | Enter the export weight in kg |
    And I will be navigated to ‘Was the document issued in the UK’ page:Yes
    Then I validate Add a UK entry document
      | Dover |Transport details | GBR-2023-SD-212926C94|1111|
    And I will Validate Added Product To this consignment
   And add 1 storage facilities with "Postcode Search" follows:
     | Facility | Lancaster House Hampshire Ct | Newcastle upon | SA6 8PP | No |
   And I select the export destination country "Jersey"
   And I enter a Storage Transport type as: "Truck"
   And I select as road transport document:No
   When The User submits the document for SD
   Then I sign out external app completely