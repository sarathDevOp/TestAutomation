Feature: Validate Error content for welsh translation,
  As an user if I select welsh language
  I want to be able to see error content in welsh language


  Scenario:1 - Exporter can validate the error content translation in welsh on the add-your-reference and add-exporter-details
  pages in Processing Statements Journey
     Given I logged in to the MMO application as:
#       | 31 16 69 76 36 71 |Hope@54321 |
       | 91 40 65 17 15 68 | Error@12345 |
     And ECC user create "Create a UK processing statement" certificate
     When I click on "Welsh" language toggle
     And language should be change to welsh
     When I click on "Your reference (Optional)" link from PS Progress page
     And Add Reference "More than 50 chars abcdefghijklmnopqrstuvwxyzabcdefghijerre" to the catch certificate
     And error content should be in welsh language
     And Add Reference "#$%%^^&^7778#$$" to the catch certificate
#    And error content should be in welsh language
     And Add Reference "Fish export services" to the catch certificate
#    And keep Company name as blank and click on "Save and continue"
     And add Company name as "Mk Fisheries Ltd" and click on "Save and continue"
     Then I sign out external app completely


  Scenario:2 - Exporter can validate error content translation in welsh on the add-consignment-details and add-catch-details
   pages in PS journey

    Given I logged in to the MMO application as:
#       | 31 16 69 76 36 71 |Hope@54321 |
      | 91 40 65 17 15 68 | Error@12345 |
    And ECC user create "Create a UK processing statement" certificate
    When I click on "Welsh" language toggle
    And language should be change to welsh
    When I click on "Consignment description" link from "Create a UK processing statement" Progress page
#    When I click on "Consignment description" link from Progress page
    And I validate commodity code description page in welsh "Enter a description and commodity code"
    And I validate Add catch details page click on save and continue
#    And I validate Add catch details
#    | Enter the FAO code or species name | #@#$#$%#%$%^ |Enter the total weight landed in kg | Enter the export weight in kg (before processing) | Enter the export weight in kg (after processing) |
    Then I sign out external app completely

  @Reg
  Scenario:3 Exporter can Validate Welsh error content on the “Add processing plant details“ page for blank submissions
  and invalid input data
    Given I logged in to the MMO application as:
      # | 31 16 69 76 36 71 |Hope@54321 |
      | 91 40 65 17 15 68 | Error@12345 |
    And ECC user create "Create a UK processing statement" certificate
    When I click on "Welsh" language toggle
    And language should be change to welsh
    When I click on "Processing plant ID" link from "Create a UK processing statement" Progress page
    And I validate processing plant details page click on save and continue
#    And I validate processing plant details
#    | Enter the name of the person responsible for this consignment | Enter the plant approval number |
    Then I sign out external app completely






