@Reg
Feature: ECC users are able to check the documents created for CC, PS & SD documents
  As an External app user
  I am able to check the drafts and completed documents created by that user on Dashboard page


  Scenario:1 - Validate user Create Catch Certificate link is enable - After save 49 drafts
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 56 82 45 35 91 95 | TestAuto12 |
    When exporter starts "Create a UK catch certificate"
    Then "Create a UK catch certificate" button is enabled up to 49 saved certificate
    And I sign out external app completely

  @F10-2907
  Scenario:2 - Validate the CC user can add maximum of 50 draft documents
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 37 44 16 70 04 93 | Testmmo33 |
    When exporter starts "Create a UK catch certificate"
    Then "Create a UK catch certificate" button is enabled up to 50 saved certificate
    Then I am notified that the maximum number of drafts has been reached for "Create a UK catch certificate"
    And I sign out external app completely


  @MECCB-718
  Scenario:3 - Should be able to see the list of completed Catch certificates in the Current month
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 31 98 25 22 14 16 | TestAuto12         |
#     PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1 |

    When ECC exporter opens "Create a UK catch certificate" home page
    Then I should see the "Catch Certificate" documents history of previous 1 months
    And I sign out external app completely

  @MECCB-718
  Scenario:4 - Should be able to view a completed catch certificate for the previous 3 months
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 31 98 25 22 14 16 | TestAuto12         |
#     PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1 |

    When ECC exporter opens "Create a UK catch certificate" home page
    Then I should see the "Catch Certificate" documents history of previous 3 months
    And I sign out external app completely


  @FIO-971
  Scenario:5 - Validate create a new precessing statement link enable - after saved 49 draft
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 81 90 60 80 59 38 | TestAuto12         |
    When exporter start "Create a UK processing statement"
    Then "Create a UK processing statement" button is enabled up to 49 saved certificate
    And I sign out external app completely

  @FIO-972
  Scenario:6 - Validate PS user can add maximum of 50 drafts
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
#      | 50 21 97 26 66 09 | Testmmo90          |
      | 37 44 16 70 04 93 | Testmmo33 |
    When exporter start "Create a UK processing statement"
    Then "Create a UK processing statement" button is enabled up to 50 saved certificate
    Then I want to stop exporters from copying an application of "Create a UK processing statement"
    And I am notified that the maximum number of drafts has been reached for "Create a UK processing statement"
    And I sign out external app completely


  @MECCB-718
  Scenario:7 - Should be able to see the list of previously completed certificates
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 96 50 67 91 51 91 | Testmmo30         |
    When ECC exporter opens "Create a UK processing statement" home page
    Then I should see the "Processing Statement" documents history of previous 3 months
    And I sign out external app completely

  @MECCB-718
  Scenario:8 - Should be able to view a completed Processing Statement certificate
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 96 50 67 91 51 91 | Testmmo30         |
    When ECC exporter opens "Create a UK processing statement" home page
    Then I should see the "Processing Statement" documents history of previous 1 months
    And I sign out external app completely


  Scenario:9 - Validate user Create Storage Document link is enable - After save 49 drafts
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 43 55 43 32 50 85 | Testmmo33          |
    When exporter start "Create a UK storage document"
    Then "Create a UK storage document" button is enabled up to 49 saved certificate
    And I sign out external app completely


  Scenario:10 - Validate SD user can add maximum of 50 draft
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 43 55 43 32 50 85 | Testmmo33          |
#      | 37 44 16 70 04 93 | Testmmo33 |
    When exporter start "Create a UK storage document"
    Then "Create a UK storage document" button is enabled up to 50 saved certificate
    And I want to stop exporters from copying an application of "Create a UK storage document"
    And I am notified that the maximum number of drafts has been reached for "Create a UK storage document"
    And I sign out external app completely


  @MECCB-718
  Scenario:11 - Should be able to see the list of previously completed certificates
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 76 79 14 15 89 28 | Testing300        |
    When ECC exporter opens "Create a UK storage document" home page
    Then I should see the "Storage Document" documents history of previous 3 months
    And I sign out external app completely

  @MECCB-718
  Scenario:12 - Should be able to view a completed Processing Statement certificate
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | ccCompanyUser     | ccCompanyPassword |
      | 76 79 14 15 89 28 | Testing300        |
    When ECC exporter opens "Create a UK storage document" home page
    Then I should see the "Storage Document" documents history of previous 1 months
    And I sign out external app completely


  Scenario:13 - Validating Footer links from MMO Dashboard page
    Given I logged in to the MMO application as:
#      TST Env Test Account
      | 33 91 65 69 82 22  |  TestAuto12 |
    #      PRE-PROD / PREMO Environment
#      | 19 58 77 94 43 89 | Testaccount1      |
    When ECC user click on "Accessibility" link in the footer of the application
    Then I should be on "Accessibility" page and I validate page
    When ECC user click on "Cookies" link in the footer of the application
    Then I should be on "Cookies" page and I validate page
    When ECC user click on "Privacy" link in the footer of the application
    Then I should be on "Privacy" page and I validate page
    When ECC user click on "Service Improvement" link in the footer of the application
    Then I should be on "Service Improvement" page and I validate page
    And I sign out external app completely