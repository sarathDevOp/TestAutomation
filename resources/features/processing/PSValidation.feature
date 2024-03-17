@Reg
Feature: As an exporter
  I want to see a change in headings to the catch-added page
  So that the headings relate to the changes made

  Scenario:1- Selecting to edit a catch certificate and I was asked the  question ‘Was the Catch certificate issued in the UK’
    Given I logged in to the MMO application as:
      | 96 50 67 91 51 91 | Testmmo30 |
    When ECC user create "Create a UK processing statement" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "SIMPLE PS FLOW REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And Exporter add a 3 catch to the consignment as follows:
      | No | NA | Coloconger raniceps (ACO) | 500 | 200 | 100 | Yes |
      | No | NA | Indian mottled eel (AAG) | 400 | 200 | 100 | Yes |
      | Yes | GBR-2022-CC-17C858269 | European lobster (LBE) | NA | NA | NA | No  |
    When I select to edit my catch certificate
    And I select "No" in the Add Catch Type page
    Then I am navigated to the existing "Add catch details - Create a UK processing statement - GOV.UK" page
    Then I sign out external app completely
 @test50
  Scenario:2 Selecting to edit a catch certificate and I answered 'No' to the  question ‘Was the Catch certificate issued in the UK’
    Given I logged in to the MMO application as:
     # | 96 50 67 91 51 91 | Testmmo30 |
      | 14 48 94 74 31 49 | Testaccount1 |
    When ECC user create "Create a UK processing statement" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "SIMPLE PS FLOW REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And Exporter add a 1 catch to the consignment as follows:
      | No | NA | Coloconger raniceps (ACO) | 500 | 200 | 100 | No |
    When I select to edit my catch certificate
    Then I am navigated to the existing "Add catch details - Create a UK processing statement - GOV.UK" page
    Then I sign out external app completely

  Scenario:3 Selecting to edit a catch certificate and I answered 'Yes' to the  question ‘Was the Catch certificate issued in the UK’
    Given I logged in to the MMO application as:
      | 96 50 67 91 51 91 | Testmmo30 |
    When ECC user create "Create a UK processing statement" certificate
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "SIMPLE PS FLOW REFERENCE" to the catch certificate
    And Continue my "Create a UK processing statement" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add a commodity code description as "Atlantic code fishcakes"
    And Exporter add a 1 catch to the consignment as follows:
      | Yes | GBR-2022-CC-17C858269 | European lobster (LBE) | NA | NA | NA | No  |
    When I select to edit my catch certificate
    Then I am navigated to the existing "Add catch details - Create a UK processing statement - GOV.UK" page
    Then I sign out external app completely