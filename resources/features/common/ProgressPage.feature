

 Feature: ECC users are able to validate Progress page for CC/PS/SD journeys

  As an External app user
  I am able to validate Progress page

  @Reg
  Scenario:1 - Validating Progress page for Catch certificate journey
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 31 43 28 85 70 41 | TestAuto12 |

    When ECC user create "Create a UK catch certificate" certificate
    And I select "Manual entry" landings entry and "Continue" the journey
    Then I should be on progress page and I validate with "Manual entry"
    And I should be on Progress page and I validate "Manual entry" journey option
      | You have completed 0 of 7 required sections. | OPTIONAL | INCOMPLETE | INCOMPLETE | CANNOT START YET | INCOMPLETE | INCOMPLETE | INCOMPLETE | CANNOT START YET |
    When I click on "Back" link from Progress page
    Then I should see "Landings Entry" page
    When I select "Upload from a CSV file" landings entry and "Continue" the journey
    Then I should be on progress page and I validate with "Upload from a CSV file"
    When I click on "Back" link from Progress page
    Then I should see "Landings Entry" page
    When I select "Direct Landing" landings entry and "Continue" the journey
    Then I should be on Landings confirmation page
    And I navigate back to Progress page
    And I should be on progress page and I validate with "Direct Landing"
    And I sign out external app completely


  @Reg
  Scenario:2 - Validating sections completed status on Progress page for Catch certificate journey
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 31 43 28 85 70 41 | TestAuto12 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-SIMPLE CATCH CERTIFICATE REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | BSF | Fresh | Gutted | 03028990 - Fresh or chilled fish, n.e.s. |
    And add exporter 1 landing details as follows:
      | 19/02/2022 | NN470 | Black scabbardfish (BSF), Fresh, Gutted, 03028990 | 10 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
       And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    And I navigate back to Progress page
    Then I should be on Progress page and I validate "Manual entry" journey option
      | You have completed 7 of 7 required sections. | COMPLETED | COMPLETED | COMPLETED | COMPLETED | COMPLETED | COMPLETED | COMPLETED | COMPLETED |
    When I click on "Submit to Check your Answers" button to continue to submit my catch certificate
    Then The User submits the document
    And I validate the document number from "ONLINE" Confirmation page
    And I sign out external app completely

  @Reg
  Scenario:3 - Validating Progress page for Processing Statement journey
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 31 43 28 85 70 41 | TestAuto12 |
    When ECC user create "Create a UK processing statement" certificate
    Then I validate Processing statement progress page
    And I sign out external app completely


  @Reg
  Scenario:4 - Validating Progress page for Processing Statement journey
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 31 43 28 85 70 41 | TestAuto12 |
    When ECC user create "Create a UK processing statement" certificate
    Then I should be on Processing Statement Progress page
      | You have completed 0 of 7 required sections. | OPTIONAL | INCOMPLETE | INCOMPLETE | INCOMPLETE | INCOMPLETE | INCOMPLETE | INCOMPLETE | INCOMPLETE |
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "SIMPLE PS FLOW REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And Exporter add a 1 catch to the consignment as follows:
      | ACO | 500 | 200 | 100 | No |
    And I add person responsible "capgemini" and plant approval number "456"
    Then The user selects the Processing plant details "Postcode Search" as follows
      | Processing Plant | LANGDON ROAD | SWANSEA | SA1 8QZ | United Kingdom |
    And I complete health certificate details: certificate number "20/2/123456" and certificate date "12/06/2019"
    And I select the export destination country "Jersey"
    When I navigate back to Progress page
    Then I should be on Processing Statement Progress page
      | You have completed 7 of 7 required sections. | COMPLETED | COMPLETED | COMPLETED | COMPLETED | COMPLETED | COMPLETED | COMPLETED | COMPLETED |

    And I validate the status of all the selections completed
    When I click on "Submit to Check your Answers" button to continue to submit my processing statement
    When The User submits the document
    And I sign out external app completely


  Scenario:5 - Validating Progress page for Storage Document journey
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 31 43 28 85 70 41 | TestAuto12 |
    When ECC user create "Create a UK storage document" certificate
#    Then I validate Processing statement progress page
    Then User validates "Create a UK storage document" progress page
    And I sign out external app completely


  @Reg
  Scenario:6 - Validating Progress page for Storage Document journey
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 31 43 28 85 70 41 | TestAuto12 |
    When ECC user create "Create a UK storage document" certificate
    Then I should be on Storage Statement Progress page
      | You have completed 0 of 6 required sections. | OPTIONAL | INCOMPLETE | INCOMPLETE | INCOMPLETE | INCOMPLETE | INCOMPLETE | CANNOT START YET | INCOMPLETE |
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "SIMPLE SD FLOW REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 1 products to consignment as:
      | HER | 457123 | 5675 | 16/04/2019 | Liverpool | 56yti | 156567 | No |
    And add 1 storage facilities with "Postcode Search" follows:
      | Facility | Lancaster House Hampshire Ct | Newcastle upon | SA6 8PP | No |
    And I select the export destination country "Jersey"
    And I enter a Storage Transport type as: "Truck"
    When I navigate back to Progress page
    Then I should be on Storage Statement Progress page
      | You have completed 6 of 6 required sections. | COMPLETED | COMPLETED | COMPLETED | COMPLETED | COMPLETED | COMPLETED | COMPLETED | COMPLETED |
    When I click on "Submit to Check your Answers" button to continue to submit my processing statement
    When The User submits the document
    And I sign out external app completely
