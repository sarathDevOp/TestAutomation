@Reg
Feature: FES Exporters, Products Favourites User Flow
  As an Exporter, I want to be able to navigate to Products Favourites page
  So that I am able to create my Favourite products page from Catch Certificate journey


  @smoke
  Scenario:1 - Navigate to Add Favourite products page from Catch Certificate journey
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 14 08 86 14 87 70 | TestAuto12 |
    When ECC user navigates to "Create a UK catch certificate" certificate
    And I navigate to Product favourites page
    And I validate Favourite products page
    And I sign out external app completely


  @smoke
  Scenario:2 - Add multiple products to the user favourites validate duplicate product
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 92 33 15 91 89 36 | TestAuto12 |
    When ECC user navigates to "Create a UK catch certificate" certificate
    And I navigate to Product favourites page
    Then I can add 4 products
      | Atlantic cod (COD)| Fresh| Whole|03025110 - Fresh or chilled cod "Gadus morhua"|
      |European lobster (LBE)| Alive| Whole | 03063210 - Live lobsters "Homarus spp." |
      | Red codling (NEC)   | Fresh |Gutted|03028990 - Fresh or chilled fish, n.e.s.|
      | Atlantic cod (COD)| Fresh| Whole|03025110 - Fresh or chilled cod "Gadus morhua"|
    And I could see the "Duplicate" products validation error
    And I remove the favourites favorites from the table
    And I sign out external app completely


  @FI0-3566
  @Test01
  Scenario:3 - Validate the Back navigation from Add Favourites page
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 33 93 13 83 71 70 | TestAuto12 |
#      | 14 08 86 14 87 70 | TestAuto12 |
    When ECC user navigates to "Create a UK catch certificate" certificate
    And I navigate to Product favourites page
    And I click back link from Add favourites page
   # Then I should validate "Catch certificates - Create a UK catch certificate - GOV.UK" page title
    When I start creating "Create a UK catch certificate" certificate
    And I navigate to Product favourites page
    And I click back link from Add favourites page
    When I start creating "Create a UK catch certificate" certificate
   # Then I should see "Landings Entry" page
    And I select "Manual entry" landings entry and "Continue" the journey
    And I navigate to Product favourites page
    When I click back link from Add favourites page
    And I click on "Your reference (Optional)" link from Progress page
    Then I should validate "Add your reference for this export - Create a UK catch certificate - GOV.UK" page title
    And Add Reference "CC-SIMPLE CATCH CERTIFICATE REFERENCE" to the catch certificate
    Then I should validate "Add exporter details - Create a UK catch certificate - GOV.UK" page title
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    Then I should validate "What are you exporting? - Create a UK catch certificate - GOV.UK" page title
    And exporter add 1 species with their state and presentation as follows:
      | COD | Fresh | Whole | 03025110 - Fresh or chilled cod |
    And I navigate to Product favourites page
    When I click back link from Add favourites page
#    Then I should validate "Add landings for each product - Create a UK catch certificate - GOV.UK" page title
    And add 1 landing details and get total weight on the CC
      | 05/09/2020 | Wiron 5 | Atlantic cod (COD), Fresh, Whole, 03025110 | 10.02 |
    And I navigate to Product favourites page
    When I click back link from Add favourites page
    Then I should validate "Where does the export leave from? - Create a UK catch certificate - GOV.UK" page title
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
    And I navigate to Product favourites page
    When I click back link from Add favourites page
    Then I should validate "How does the export leave the UK? - Create a UK catch certificate - GOV.UK" page title
#    And I enter a Transport type as: "Container vessel"
    And I enter a Catch Transport type: "Container vessel"
      | NAT | REG | DEST |
    And I navigate to Product favourites page
    When I click back link from Add favourites page
    Then I should validate "Check your information - Create a UK catch certificate - GOV.UK" page title
    Then The user verifies the total weights on Summary page
    And I navigate to Product favourites page
    When I click back link from Add favourites page
    Then I should validate "Check your information - Create a UK catch certificate - GOV.UK" page title
    When The User submits the document
    And I navigate to Product favourites page
    When I click back link from Add favourites page
    Then I should validate "Catch certificate created - Create a UK catch certificate - GOV.UK" page title
    And I sign out external app completely


  @FI0-3611  @ValidateFavourite
  Scenario:4 - Limit number of product favourites on Favourites page
    Given I logged in to the MMO application as:
#      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 65 16 32 45 02 76 | TestAuto12 |

    When ECC user navigates to "Create a UK catch certificate" certificate
    And I navigate to Product favourites page
    Then I can add 60 products
      | Baird's slickhead (ALC)    | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.|
      | Alfonsinos nei (ALF)     | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s. |
      | Greater amberjack (AMB)    | Fresh  | Whole    | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes "Scomberomorus spp.", jacks, crevalles "Caranx spp.", silver pomfrets "Pampus spp.", Pacific saury "Cololabis saira", scads "Decapterus spp.", capelin "Mallotus villosus", bonitos "Sarda spp.", marlins, sailfishes and spearfish "Istiophoridae" |
      | Amer. plaice(=Long rough dab) (PLA) | Fresh    | Whole| 03028990 - Fresh or chilled fish, n.e.s.|
      | European anchovy (ANE)    | Fresh  | Whole    | 03024200 - Fresh or chilled anchovies "Engraulis spp." |
      | Spanish ling (SLI)         | Fresh  | Whole    | 03025940 - Fresh or chilled ling "Molva spp."|
      | Blackbellied angler (ANK) | Fresh  | Whole    | 03028950 - Fresh or chilled monkfish "Lophius spp."|
      | Blue antimora (ANT)       | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.|
      | Iceland catshark (APQ)    | Fresh  | Whole    | 03028115 - Fresh or chilled picked dogfish "Squalus acanthias" and catsharks "Scyliorhinus spp."|
      | Argentines (ARG) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.|
# 10 species
      | Greater argentine (ARU) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.  |
      | Sand smelt (ATP) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.          |
      | Axillary seabream (SBA)| Fresh  | Whole    | 03028510 - Fresh or chilled sea bream of the species Dentex dentex or Pagellus spp. |
      | Bigeye tuna (BET) | Fresh  | Whole    | 03023410 - Fresh or chilled bigeye tunas "Thunnus obesus" for industrial processing or preservation             |
      | Atlantic bluefin tuna (BFT) | Fresh  | Whole    | 03023519 - Fresh or chilled Atlantic bluefin tuna "Thunnus thynnus" (excl. for industrial processing or preservation)  |
      | Pouting(=Bib) (BIB) | Fresh  | Whole    | 03025990 - Fresh or chilled fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae (excl. cod, haddock, coalfish, hake, Alaska pollack, blue whitings, Boreogadus saida, whiting, pollack and ling)  |
      | Marlins,sailfishes,etc. nei (BIL) | Fresh  | Whole    | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes "Scomberomorus spp.", jacks, crevalles "Caranx spp.", silver pomfrets "Pampus spp.", Pacific saury "Cololabis saira", scads "Decapterus spp.", capelin "Mallotus villosus", bonitos "Sarda spp.", marlins, sailfishes and spearfish "Istiophoridae"|
      | Blue ling (BLI)| Fresh  | Whole    | 03025940 - Fresh or chilled ling "Molva spp."|
      | Brill (BLL) | Fresh  | Whole    | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae" (excl. lesser or Greenland halibut, Atlantic halibut, Pacific halibut, plaice, sole, turbot and megrim)|
      | Black marlin (BLM) | Fresh  | Whole    | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes "Scomberomorus spp.", jacks, crevalles "Caranx spp.", silver pomfrets "Pampus spp.", Pacific saury "Cololabis saira", scads "Decapterus spp.", capelin "Mallotus villosus", bonitos "Sarda spp.", marlins, sailfishes and spearfish "Istiophoridae"    |
## 20 species
      | Patagonian blennie (BLP) | Frozen | Gutted   | 03038990 - Frozen fish, n.e.s. |
      | Bluefish (BLU) | Frozen | Whole    | 03038990 - Frozen fish, n.e.s. |
      | Boarfish (BOC) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.|
      | Bogue (BOG) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.   |
      | Atlantic bonito (BON) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.|
      | Black seabream (BRB) | Fresh  | Whole    | 03028590 - Fresh or chilled sea bream "Sparidae" (excl. gilt-head sea bream, Dentex dentex and Pagellus spp.) |
      | Blackbelly rosefish (BRF) | Fresh  | Whole    | 03028939 - Fresh or chilled redfish "Sebastes spp." (excl. Sebastes marinus)    |
      | Black scabbardfish (BSF) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.   |
      | Blue shark (BSH) | Fresh  | Gutted   | 03028140 - Fresh or chilled blue shark "Prionace glauca"   |
      | European seabass (BSS) | Fresh  | Whole    | 03028410 - Fresh or chilled European sea bass "Dicentrarchus labrax"  |
## 30 species
      | Blue marlin (BUM)       | Fresh  | Whole    | 03024990 - Fresh or chilled Indian mackerels |
      | Splendid alfonsino (BYS) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s. |
      | Atlantic wolffish (CAA) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.  |
      | Capelin (CAP) | Fresh  | Whole    | 03024990 - Fresh or chilled Indian mackerels        |
      | Wolffishes(=Catfishes) nei (CAT) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.|
      | Witch flounder (WIT) | Fresh  | Whole    | 03022980 - Fresh or chilled flat fish "Pleuronectidae, |
      | Red bandfish (CBC) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.  |
      | Bull shark (CCE) | Fresh  | Whole    | 03028180 - Fresh or chilled dogfish and other sharks |
      | Blacktip shark (CCL) | Fresh  | Whole    | 03028180 - Fresh or chilled dogfish and other sharks |
      | Rudderfish (CEO) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.|
## 40 species
      | Pike icefish (CES) | Fresh  | Filleted | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                |
      | Wedge sole (CET) | Fresh  | Whole    | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae,                   |
      | Black dogfish (CFB) | Fresh  | Whole    | 03028180 - Fresh or chilled dogfish and other sharks                               |
      | Chilean jack mackerel (CJM) | Fresh  | Whole    | 03024530 - Fresh or chilled Chilean jack mackerel "Trachurus murphyi"              |
      | Rabbit fish (CMO) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.                                           |
      | Atlantic cod (COD) | Fresh  | Whole    | 03025110 - Fresh or chilled cod "Gadus morhua"                                     |
      | European conger (COE) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.                                           |
      | Corkwing wrasse (YFM) | Fresh  | Whole    | 03028990 - Fresh or chilled fish, n.e.s.                                           |
      | Common prawn (CPR) | Fresh  | Whole    | 03063690 - Shrimps and prawns, whether in shell or not, live, fresh or chilled     |
      | Yellowtail amberjack (YTC) | Fresh  | Whole    | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes       |
# 50 species
      | Edible crab (brown crab) (CRE) | Alive | Whole | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled         |
      | Green crab (CRG) | Fresh | Whole | 03063390 - Crabs, whether in shell or not, live, fresh or chilled (excl. "Cancer pagurus") |
      | Red crab (CRR) | Fresh | Whole | 03063390 - Crabs, whether in shell or not, live, fresh or chilled (excl. "Cancer pagurus") |
      | Palinurid spiny lobsters nei (CRW) | Fresh  | Whole     | 03063100 - Rock lobster and other sea crawfish                                                                            |
      | Common shrimp (CSH) | Fresh  | Whole     | 03063510 - Shrimps "Crangon crangon", whether in shell or not, fresh or chilled                                           |
      | Common cuttlefish (CTC) | Fresh  | Whole     | 03074210 - Cuttle fish "Sepia officinalis, Rossia macrosoma, Sepiola spp.", live, fresh or chilled, with or without shell |
      | Cuttlefish, bobtail squids nei (CTL) | Fresh  | Whole     | 03074210 - Cuttle fish "Sepia officinalis, Rossia macrosoma, Sepiola spp.", live, fresh or chilled, with or without shell |
      | Edible crab (brown crab) (CRE) | Fresh  | Whole     | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled                                        |
      | Octopuses nei (OCZ) | Fresh  | Whole     | 03075100 - Octopus "Octopus spp.", live, fresh or chilled                                                                 |
      | Large-eyed rabbitfish (CYH) | Fresh  | Whole     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                  |
# 60 species

    And I could see the "Max Limit" products validation error
    And I sign out external app completely

  @F10-4819
  Scenario:5 - Validating the Manage your product favorites on the CC dash board  Page
    Given I logged in to the MMO application as:
#      TST Env Test Account#
    # | soleTraderUser    | soleTraderPassword |
      | 33 93 13 83 71 70 | TestAuto12 |
#      | 14 08 86 14 87 70 | TestAuto12 |
    When ECC user navigates to "Create a UK catch certificate" certificate
    And I click "Manage your product favourites" link
    Then I validate Favourite products page
    When I click back link from Add favourites page
    When I start creating "Create a UK catch certificate" certificate
    And I select "Direct Landing" landings entry and "Continue" the journey
    And I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-MANAGE FAVOURITES FROM PRODUCTS" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And I click on "Manage your product favourites" link from Add products page
    Then I validate Favourite products page
    When I click back link from Add favourites page
    Then I sign out external app completely

 @F10-5031
 Scenario:6 - Validating the Manage your product favorites on the CC Add Products page
   Given I logged in to the MMO application as:
#      TST Env Test Account#
    #      | soleTraderUser    | soleTraderPassword |
     | 33 93 13 83 71 70 | TestAuto12 |
   When ECC user create "Create a UK catch certificate" certificate
   And I select "Manual entry" landings entry and "Continue" the journey
   And I click on "Your reference (Optional)" link from Progress page
   And Add Reference "CC-FAVORITES LINK REFERENCE" to the catch certificate
   And Continue my "Create a UK catch certificate" with "default" addresses
     | Automation Testing | Automation City | SA6 8PP | United Kingdom |
   And I click "Manage your product favourites" link from Add Products page
   And I validate Favourite products page
   Then I sign out external app completely