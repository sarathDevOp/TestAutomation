@Reg @FI0-4214
Feature: FES Exporters are able to validate Back navigation to Progress page for CC / PS/ SD journey
  As an exporter, I want to easily navigate from certain pages within CC, PS & SD applications back to the progress page
  So that I can easily view and be reminded of the progress I’ve made to the different sections of my application


  Scenario:1 - Validating Back navigation to Progress page for Catch certificate journey
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 81 20 48 46 57 54 | TestAuto12 |
    When ECC user create "Create a UK catch certificate" certificate
    And I select "Upload from a CSV file" landings entry and "Continue" the journey

    And I click on "Your reference (Optional)" link from "Create a UK catch certificate" Progress page
    Then I should be on the "Add your reference for this export - Create a UK catch certificate - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    When I click on "Exporter details" link from "Create a UK catch certificate" Progress page
    Then I should be on the "Add exporter details - Create a UK catch certificate - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    When I click on "Data upload" link from "Create a UK catch certificate" Progress page
    Then I should be on the "Upload products and landings - Create a UK catch certificate - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    When I click on "Product details" link from "Create a UK catch certificate" Progress page
    Then I should be on the "What are you exporting? - Create a UK catch certificate - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    When I click on "Product details" link from "Create a UK catch certificate" Progress page
    And exporter add 1 species with their state and presentation as follows:
      | COD | Fresh | Whole | 03025110 - Fresh or chilled cod "Gadus morhua" |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    When I click on "Catch waters" link from "Create a UK catch certificate" Progress page
    Then I should be on the "Where does the export leave from? - Create a UK catch certificate - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    When I click on "Export journey" link from "Create a UK catch certificate" Progress page
    Then I should be on the "What journey does the export take? - Create a UK catch certificate - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    When I click on "Transport type" link from "Create a UK catch certificate" Progress page
    Then I should be on the "How does the export leave the UK? - Create a UK catch certificate - GOV.UK" page
    Then I should be on the Transport page
      | Create a UK catch certificate | How does the export leave the UK? - Create a UK catch certificate - GOV.UK |  |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    When I click on "Transport type" link from "Create a UK catch certificate" Progress page
    Then I should be on the Transport page
      | Create a UK catch certificate | Do you have a road transport document? - Create a UK catch certificate - GOV.UK | Truck Yes |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    When I click on "Transport type" link from "Create a UK catch certificate" Progress page
    Then I should be on the Transport page
      | Create a UK catch certificate | Add transportation details: truck - Create a UK catch certificate - GOV.UK | Truck No |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    When I click on "Transport type" link from "Create a UK catch certificate" Progress page
    Then I should be on the Transport page
      | Create a UK catch certificate | Add transportation details: plane - Create a UK catch certificate - GOV.UK |  |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    When I click on "Transport type" link from "Create a UK catch certificate" Progress page
    Then I should be on the Transport page
      | Create a UK catch certificate | Add transportation details: train - Create a UK catch certificate - GOV.UK |  |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    When I click on "Transport type" link from "Create a UK catch certificate" Progress page
    Then I should be on the Transport page
      | Create a UK catch certificate | Add transportation details: container vessel - Create a UK catch certificate - GOV.U |  |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK catch certificate - GOV.UK" page

    And I sign out external app completely


  @FI0-4216 @FI0-4219
  Scenario:2 - Validating Back navigation to Progress page for Processing Statement journey
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 81 20 48 46 57 54 | TestAuto12 |
    When ECC user create "Create a UK processing statement" certificate

    And I click on "Your reference (Optional)" link from "Create a UK processing statement" Progress page
    Then I should be on the "Add your reference for this export - Create a UK processing statement - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK processing statement - GOV.UK" page

    When I click on "Exporter details" link from "Create a UK processing statement" Progress page
    Then I should be on the "Add exporter details - Create a UK processing statement - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK processing statement - GOV.UK" page

    When I click on "Consignment description" link from "Create a UK processing statement" Progress page
    Then I should be on the "Add a description and commodity code - Create a UK processing statement - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK processing statement - GOV.UK" page

    When I click on "Catch details" link from "Create a UK processing statement" Progress page
    Then I should be on the "Add catch details - Create a UK processing statement - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK processing statement - GOV.UK" page

    When I click on "Catch details" link from "Create a UK processing statement" Progress page
    And I continue to "Add catch weights - Create a UK processing statement - GOV.UK" page
    Then I should be on the "Add catch weights - Create a UK processing statement - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK processing statement - GOV.UK" page

    When I click on "Catch details" link from "Create a UK processing statement" Progress page
    And I continue to "You have added 1 catch to this consignment - Create a UK processing statement - GOV.UK" page
    Then I should be on the "You have added 1 catch to this consignment - Create a UK processing statement - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK processing statement - GOV.UK" page

    When I click on "Processing plant ID" link from "Create a UK processing statement" Progress page
    Then I should be on the "Add processing plant details - Create a UK processing statement - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK processing statement - GOV.UK" page

    When I click on "Processing plant address" link from "Create a UK processing statement" Progress page
    Then I should be on the "Add processing plant address - Create a UK processing statement - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK processing statement - GOV.UK" page

    When I click on "Processing plant address" link from "Create a UK processing statement" Progress page
    And I continue to "What is the processing plant address? - Create a UK processing statement - GOV.UK" page with "postcode search"
    Then I should be on the "What is the processing plant address? - Create a UK processing statement - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK processing statement - GOV.UK" page

    When I click on "Processing plant address" link from "Create a UK processing statement" Progress page
    And I continue to "What is the processing plant address? - Create a UK processing statement - GOV.UK" page with "manual"
    Then I should be on the "What is the processing plant address? - Create a UK processing statement - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK processing statement - GOV.UK" page

    When I click on "Export Health certificate" link from "Create a UK processing statement" Progress page
    Then I should be on the "Add health certificate details - Create a UK processing statement - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK processing statement - GOV.UK" page

    When I click on "Export destination" link from "Create a UK processing statement" Progress page
    Then I should be on the "What is the export destination? - Create a UK processing statement - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK processing statement - GOV.UK" page

    And I sign out external app completely


  Scenario:3 - Validating Back navigation to Progress page for for Storage Document journey
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 81 20 48 46 57 54 | TestAuto12 |
    When ECC user create "Create a UK storage document" certificate

    And I click on "Your reference (Optional)" link from "Create a UK storage document" Progress page
    Then I should be on the "Add your reference for this export - Create a UK storage document - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Exporter details" link from "Create a UK storage document" Progress page
    Then I should be on the "Add exporter details - Create a UK storage document - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Product details" link from "Create a UK storage document" Progress page
    Then I should be on the "Add a product to this consignment - Create a UK storage document - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Product details" link from "Create a UK storage document" Progress page
    And I continue SD to "You have added 1 product to this consignment - Create a UK storage document - GOV.UK" page
    Then I should be on the "You have added 1 product to this consignment - Create a UK storage document - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Storage facilities" link from "Create a UK storage document" Progress page
    Then I should be on the "Add storage facility details - Create a UK storage document - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Storage facilities" link from "Create a UK storage document" Progress page
    And I continue SD to "What is the storage facility address? - Create a UK storage document - GOV.UK" page with "postcode search"
    Then I should be on the "What is the storage facility address? - Create a UK storage document - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Storage facilities" link from "Create a UK storage document" Progress page
    And I continue SD to "What is the storage facility address? - Create a UK storage document - GOV.UK" page with "manual"
    Then I should be on the "What is the storage facility address? - Create a UK storage document - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Storage facilities" link from "Create a UK storage document" Progress page
    And I continue SD to "You have added 1 storage facility - Create a UK storage document - GOV.UK" page with "postcode search"
    Then I should be on the "You have added 1 storage facility - Create a UK storage document - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Export destination" link from "Create a UK storage document" Progress page
    Then I should be on the "What is the export destination? - Create a UK storage document - GOV.UK" page
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Transport type" link from "Create a UK storage document" Progress page
    Then I should be on the Transport page
      | Create a UK catch certificate | How does the export leave the UK? - Create a UK storage document - GOV.UK |  |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Transport type" link from "Create a UK storage document" Progress page
    Then I should be on the Transport page
      | Create a UK storage document | Do you have a road transport document? - Create a UK storage document - GOV.UK | Truck Yes |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Transport type" link from "Create a UK storage document" Progress page
    Then I should be on the Transport page
      | Create a UK storage document | Add transportation details: truck - Create a UK storage document - GOV.UK | Truck No |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Transport type" link from "Create a UK storage document" Progress page
    Then I should be on the Transport page
      | Create a UK storage document | Add transportation details: plane - Create a UK storage document - GOV.UK |  |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Transport type" link from "Create a UK storage document" Progress page
    Then I should be on the Transport page
      | Create a UK storage document | Add transportation details: train - Create a UK storage document - GOV.UK |  |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    When I click on "Transport type" link from "Create a UK storage document" Progress page
    Then I should be on the Transport page
      | Create a UK storage document | Add transportation details: container vessel - Create a UK storage document - GOV.UK |  |
    When I click on "Back to Your Progress" link
    Then I should be on the "Your Progress - Create a UK storage document - GOV.UK" page

    And I sign out external app completely