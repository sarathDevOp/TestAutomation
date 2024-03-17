@Reg
Feature:FES Exporter can upload CSV File data
  As an Exporter, I want to be able to upload a CSV file data of products& Landings
 So that I can create my Catch certificate quickly

  Scenario:1 - Verify the user is able to validate File upload page.
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 97 06 28 28 84 69 | TestAuto12 |
#      PRE-PROD / PREMO Environment
#      |41 76 37 65 65 02  |Testaccount1         |
    When ECC user create "Create a UK catch certificate" certificate
    And I select "Upload from a CSV file" landings entry and "Continue" the journey
    And I click on "Data upload" link from Progress page
    Then I should be on File Upload page
    And Also I validate Upload Guidance page
    And I sign out external app completely

  Scenario:2 - Create a catch certificate using file upload data
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 97 06 28 28 84 69 | TestAuto12 |
#      PRE-PROD / PREMO Environment
#      |41 76 37 65 65 02  |Testaccount1         |
    When ECC user create "Create a UK catch certificate" certificate
    When I select "Upload from a CSV file" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-FILE UPLOAD REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I upload a "10Landings.csv" file
    Then I should see the data on the File upload page
    And I continue the Catch certificate
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    Then I sign out external app completely

  Scenario:3 - Validate invalid file validations with File upload
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 97 06 28 28 84 69 | TestAuto12 |
    When ECC user create "Create a UK catch certificate" certificate
    When I select "Upload from a CSV file" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-FILE UPLOAD REFERENCE" to the catch certificate
    Then I should be on "Create a UK catch certificate" exporter details page
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I upload a "emptyFile.csv" file
    Then I should see the validation message of "empty file" error
    When I upload a "Error validations File.csv" file
    Then I should see the validation message of "Error validations File" error
    Then I should see the data on the File upload page
    And I upload a "no file.csv" file
    Then I should see the validation message of "no file" error
    And I upload a "101Landings.csv" file
    Then I should see the validation message of "101Landings" error
    And I sign out external app completely

  Scenario:4 - Validate back navigation from File upload page
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 97 06 28 28 84 69 | TestAuto12 |
    When ECC user create "Create a UK catch certificate" certificate
    And I select "Upload from a CSV file" landings entry and "Continue" the journey
    Then I should be on progress page and I validate with "Upload from a CSV file"
    When I click on "Data upload" link from Progress page
    Then I should be on File Upload page
    When I click "Back" link from File upload page
    #Then I should be on "Create a UK catch certificate" exporter details page
    And I sign out external app completely