@Reg
Feature:FES exporters are able add products for the Catch certificate journey
  As Exporter, I am able to add product (normal & saved Favourites Products),
  So that I can create a certificate.

  Scenario:1 - Select a product from Favourite products on Add products page
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 87 44 69 33 60 90 | TestAuto12 |
    When ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-FAVOURITE SELECTION REFERENCE" to the catch certificate
    Then I should be on "Create a UK catch certificate" exporter details page
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And an exporter choose 1 products from favourites
      |Atlantic cod (COD) Fresh,Whole, 03025110|
    And add exporter 1 landing details as follows:
      | 09/09/2021 | NN470 | Atlantic cod (COD), Fresh, Whole, 03025110| 10 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    And I sign out external app completely

  Scenario:2 - Select multiple products from Favourites from Add products page
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 87 44 69 33 60 90 | TestAuto12 |
    When ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-FAVOURITE SELECTION REFERENCE" to the catch certificate
    Then I should be on "Create a UK catch certificate" exporter details page
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And an exporter choose 3 products from favourites
      | Atlantic cod (COD) Fresh,Whole, 03025110 |
      | Large-eye dentex (DEL) Fresh,Whole, 03028990 |
      | European lobster (LBE) Alive,Whole, 03063210 |
    And add exporter 3 landing details as follows:
      | 09/09/2021 | NN470 |Atlantic cod (COD), Fresh, Whole, 03025110 | 10 |
      | 09/10/2021 | NN470 |Large-eye dentex (DEL), Fresh, Whole, 03028990 | 10 |
      | 19/11/2021 | NN470 |European lobster (LBE), Alive, Whole, 03063210| 10 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    And I sign out external app completely

  Scenario:3 - Validating external app user is able to edit the products selected
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 87 44 69 33 60 90 | TestAuto12 |
    When ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-EDIT PRODUCT REFERENCE" to the catch certificate
    Then I should be on "Create a UK catch certificate" exporter details page
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 3 species with their state and presentation as follows:
      | Atlantic cod (COD) | Fresh | Whole    | 03025110 - Fresh or chilled cod "Gadus morhua"|
      | Brill (BLL) | Fresh | Filleted | 03044300 - Fresh or chilled fillets of flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Citharidae" |
      | Atlantic herring (HER) | Fresh | Whole    | 03024100 - Fresh or chilled herring "Clupea harengus, clupea pallasii"|
    And I click on Back link from Landings page and edit 1 species
     And I validate species details
      | Atlantic cod (COD) | Fresh | Whole | 03025110 - Fresh or chilled cod "Gadus morhua" |
    When I edit the product with "State" on add Products page
      | Frozen |Gutted| 03036310 - Frozen cod "Gadus morhua" |
    Then I should see the edited details in the products
      | Atlantic cod (COD), Fresh, Whole   |
      | Atlantic cod (COD), Frozen, Gutted |
    And I sign out external app completely

  Scenario:4 - External app user is able to edit the products from Check Your answers page
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 87 44 69 33 60 90 | TestAuto12 |
    When ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-EDIT PRODUCT SUMMARY REFERENCE" to the catch certificate
    Then I should be on "Create a UK catch certificate" exporter details page
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | Atlantic cod (COD) | Fresh | Whole | 03025110 - Fresh or chilled cod "Gadus morhua" |
    And add exporter 1 landing details as follows:
      | 09/09/2021 | NN470 | Atlantic cod (COD), Fresh, Whole, 03025110  | 10 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
    And I enter a Catch Transport type: "Truck"
     | NAT | REG | DEST |
    And user clicks on check your answers and submit button
    And I click on change link for that Species from Check your answers page
    When I edit the product with "State" on add Products page
      | Frozen | Gutted | 03036310 - Frozen cod "Gadus morhua" |
    And I sign out external app completely

    Scenario:5 - Select Commodity code from list of codes on Add products page
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 87 44 69 33 60 90 | TestAuto12 |
    When ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-COMMODITY CODE SELECTION REFERENCE" to the catch certificate
    Then I should be on "Create a UK catch certificate" exporter details page
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | Atlantic herring (HER) | Frozen | Filleted | 03048600 - Frozen fillets of herring "Clupea harengus, Clupea pallasii" |
    And add exporter 1 landing details as follows:
      | 09/09/2021 | NN470 | Atlantic herring (HER), Frozen, Filleted, 03048600 | 10 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "Germany"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    And I sign out external app completely

  Scenario:6 - Entering same species multiple times - Same STATE and PRESENTATION
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 49 22 25 91 48 48 | Testaccount1 |
#     PRE-PROD / PREMO Environment
#      | 41 76 37 65 65 02 | Testaccount1 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-ADDING SAME SPECIES REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I add same species with the same state and presentation 2 times
      | Atlantic cod (COD) | Fresh | Whole | 03025110 - Fresh or chilled cod "Gadus morhua" |
    Then Error message should display: "Cannot add the same species with identical state and presentation as a previous"
    And I sign out external app completely



