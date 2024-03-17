@Reg
Feature: Document Validation - Buttons on 'add-product-to-this-consignment' page


  @TestSD123
  Scenario:1 - Verify add-product-to-this-consignment page valid data
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
#      | 76 79 14 15 89 28 | Testing300             |
      | 96 50 67 91 51 91 | Testmmo30 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 1 products to products to consignment as new
      | Atlantic herring (HER) | 03048990-Frozen fish fillets, n.e.s. | 5675 |
    And I will be navigated to ‘Was the document issued in the UK’ page
    Then I sign out external app completely

  Scenario:2 - Verify add-product-to-this-consignment page -Mandatory fields error message validation
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
#      | 76 79 14 15 89 28 | Testing300             |
      | 96 50 67 91 51 91 | Testmmo30 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 1 products to consignment page with all mandatory fields have been filled with valid data
      | HER | 457123 | 5675 |
    When I click on ‘Save and Continue’
    Then data specified on the page will be saved
    And I will be navigated to the next page (New ‘Was the document issued in the UK’ page)

  Scenario:3 - Verify add-product-to-this-consignment page -Mandatory fields Invalid data error message validation
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
#      | 76 79 14 15 89 28 | Testing300             |
      | 96 50 67 91 51 91 | Testmmo30 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 1 products to consignment page with all mandatory fields have been filled with valid data
      | HER | 457123 | 5675 |
    When I click on ‘Save and Continue’
    Then data specified on the page will be saved
    And I will be navigated to the next page (New ‘Was the document issued in the UK’ page)

  Scenario:4 - Verify add-product-to-this-consignment page -Mandatory fields Invalid data error message validation
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
#      | 76 79 14 15 89 28 | Testing300             |
      | 96 50 67 91 51 91 | Testmmo30 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 1 products to consignment page with all mandatory fields have been filled with valid data
      | HER | 457123 | 5675 |
    When I click on ‘Save and Continue’
    Then data specified on the page will be saved
    And I will be navigated to the next page (New ‘Was the document issued in the UK’ page)

  Scenario:5 - Verify add-product-to-this-consignment page -Save as draft button
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
#      | 76 79 14 15 89 28 | Testing300             |
      | 96 50 67 91 51 91 | Testmmo30 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 1 products to consignment page with all mandatory fields have been filled with valid data
      | HER | 457123 | 5675 |
    When I click on ‘Save and Continue’
    Then data specified on the page will be saved
    And I will be navigated to the next page (New ‘Was the document issued in the UK’ page)

  Scenario:6 - Verify add-product-to-this-consignment page -Welsh translation of errors
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | limitedCompany    | limitedCompanyPassword |
#      | 76 79 14 15 89 28 | Testing300             |
      | 96 50 67 91 51 91 | Testmmo30 |
#      PRE-PROD / PREMO Environment
#      | 55 96 00 16 46 93 | Testaccount1           |
    And ECC user create "Create a UK storage document" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "STORAGE DOCUMENT REFERENCE" to the catch certificate
    And Continue my "Create a UK storage document" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add 1 products to consignment page with all mandatory fields have been filled with valid data
      | HER | 457123 | 5675 |
    When I click on ‘Save and Continue’
    Then data specified on the page will be saved
    And I will be navigated to the next page (New ‘Was the document issued in the UK’ page)