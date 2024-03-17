@Reg
Feature: Exporter can create Catch certificate with offline validation
  As an Exporter, I am able to create a catch certificate up to 100 products & landings
  So that I can export all the products in 1 certificate.


  Scenario:1 - Verify that the Exporter can add up to 100 landings to the Catch certificate
    Given I logged in to the MMO application as:
#      | soleTraderUser    | soleTraderPassword |
      | 31 98 25 22 14 16 | TestAuto12 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "UP TO 100 SPECIES AND 100 LANDINGS REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 100 Products with their state and presentation as follows:
      | Baird's slickhead (ALC)      | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Alfonsinos nei (ALF)         | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Greater amberjack (AMB)      | Fresh  | Whole                     | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes "Scomberomorus spp.", jacks, crevalles "Caranx spp.", silver pomfrets "Pampus spp.", Pacific saury "Cololabis saira", scads "Decapterus spp.", capelin "Mallotus villosus", bonitos "Sarda spp.", marlins, sailfishes and spearfish "Istiophoridae"|
      | Amer. plaice(=Long rough dab) (PLA) | Fresh  | Whole              | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | European anchovy (ANE)       | Fresh  | Whole                     | 03024200 - Fresh or chilled anchovies "Engraulis spp."                                                                      |
      | Spanish ling (SLI)           | Fresh  | Whole                     | 03025940 - Fresh or chilled ling "Molva spp."                                                                                  |
      | Blackbellied angler (ANK)    | Fresh  | Whole                     | 03028950 - Fresh or chilled monkfish "Lophius spp."                                                                            |
      | Blue antimora (ANT)          | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Iceland catshark (APQ)       | Fresh  | Whole                     | 03028115 - Fresh or chilled picked dogfish "Squalus acanthias" and catsharks "Scyliorhinus spp."                               |
      | Argentines (ARG)             | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
#### 10 species
     | Greater argentine (ARU)      | Fresh  | Whole                      | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Sand smelt (ATP)             | Fresh  | Whole                      | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Sand smelt (ATP)             | Frozen   | Whole                    | 03038990 - Frozen fish, n.e.s.                                                                           |
      | Bigeye tuna (BET)            | Fresh   | Whole                     | 03023410 - Fresh or chilled bigeye tunas "Thunnus obesus" for industrial processing or preservation                                                                                       |
      | Atlantic bluefin tuna (BFT)  | Fresh  | Whole                      | 03023519 - Fresh or chilled Atlantic bluefin tuna "Thunnus thynnus" (excl. for industrial processing or preservation)                                                                              |
      | Pouting(=Bib) (BIB)          | Fresh  | Whole                      | 03025990 - Fresh or chilled fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae (excl. cod, haddock, coalfish, hake, Alaska pollack, blue whitings, Boreogadus saida, whiting, pollack and ling)                                                              |
      | Marlins,sailfishes,etc. nei (BIL) | Fresh  | Whole                | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes "Scomberomorus spp.", jacks, crevalles "Caranx spp.", silver pomfrets "Pampus spp.", Pacific saury "Cololabis saira", scads "Decapterus spp.", capelin "Mallotus villosus", bonitos "Sarda spp.", marlins, sailfishes and spearfish "Istiophoridae"                                                                                   |
      | Blue ling (BLI)              | Fresh  | Whole                      | 03025940 - Fresh or chilled ling "Molva spp."                                                                                  |
      | Brill (BLL)                  | Fresh  | Whole                      | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae" (excl. lesser or Greenland halibut, Atlantic halibut, Pacific halibut, plaice, sole, turbot and megrim)                                                                                        |
      | Black marlin (BLM)           | Fresh  | Whole                      | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes "Scomberomorus spp.", jacks, crevalles "Caranx spp.", silver pomfrets "Pampus spp.", Pacific saury "Cololabis saira", scads "Decapterus spp.", capelin "Mallotus villosus", bonitos "Sarda spp.", marlins, sailfishes and spearfish "Istiophoridae"                                                                              |
 ### 20 species
      | Patagonian blennie (BLP)  | Frozen | Gutted                     | 03038990 - Frozen fish, n.e.s.                                                                                                 |
      | Bluefish (BLU)            | Frozen | Whole                      | 03038990 - Frozen fish, n.e.s.                                                                                                 |
      | Boarfish (BOC)            | Fresh  | Whole                      | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Bogue (BOG)               | Fresh  | Whole                      | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Atlantic bonito (BON)     | Fresh  | Whole                      | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Black seabream (BRB)      | Fresh  | Whole                       | 03028590 - Fresh or chilled sea bream "Sparidae" (excl. gilt-head sea bream, Dentex dentex and Pagellus spp.)                                                                               |
      | Blackbelly rosefish (BRF) | Fresh  | Whole                     | 03028939 - Fresh or chilled redfish "Sebastes spp." (excl. Sebastes marinus)                                                                                       |
      | Black scabbardfish (BSF)  | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Blue shark (BSH)          | Fresh  | Gutted                    | 03028140 - Fresh or chilled blue shark "Prionace glauca"                                                                     |
      | European seabass (BSS)    | Fresh  | Whole                     | 03028410 - Fresh or chilled European sea bass "Dicentrarchus labrax"                                                           |
#  ### 30 species
      | Blue marlin (BUM)        | Fresh  | Whole                     | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes "Scomberomorus spp.", jacks, crevalles "Caranx spp.", silver pomfrets "Pampus spp.", Pacific saury "Cololabis saira", scads "Decapterus spp.", capelin "Mallotus villosus", bonitos "Sarda spp.", marlins, sailfishes and spearfish "Istiophoridae"                                                                                  |
      | Splendid alfonsino (BYS) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Atlantic wolffish (CAA) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Capelin (CAP)           | Fresh  | Whole                     | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes "Scomberomorus spp.", jacks, crevalles "Caranx spp.", silver pomfrets "Pampus spp.", Pacific saury "Cololabis saira", scads "Decapterus spp.", capelin "Mallotus villosus", bonitos "Sarda spp.", marlins, sailfishes and spearfish "Istiophoridae"                                                                                   |
      | Wolffishes(=Catfishes) nei (CAT) | Fresh  | Whole            | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Witch flounder (WIT) | Fresh  | Whole                          | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae" (excl. lesser or Greenland halibut, Atlantic halibut, Pacific halibut, plaice, sole, turbot and megrim)                                                                         |
      | Red bandfish (CBC) | Fresh  | Whole                         | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Bull shark (CCE) | Fresh  | Whole                       | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                                                                          |
      | Blacktip shark (CCL) | Fresh  | Whole                     | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                                                                           |
      | Rudderfish (CEO) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
# ### 40 species
      | Pike icefish (CES)       | Fresh  | Filleted                  | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                            |
      | Wedge sole (CET)         | Fresh  | Whole                     | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae" (excl. lesser or Greenland halibut, Atlantic halibut, Pacific halibut, plaice, sole, turbot and megrim)                                                               |
      | Black dogfish (CFB)      | Fresh  | Whole                     | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                                                                           |
      | Chilean jack mackerel (CJM) | Fresh  | Whole                  | 03024530 - Fresh or chilled Chilean jack mackerel "Trachurus murphyi"                                                          |
      | Rabbit fish (CMO)        | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                     |
      | Atlantic cod (COD)      | Fresh  | Whole                     | 03025110 - Fresh or chilled cod "Gadus morhua"                                                                                 |
      | European conger (COE)   | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Corkwing wrasse (YFM)   | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Common prawn (CPR)      | Fresh  | Whole                     | 03063690 - Shrimps and prawns, whether in shell or not, live, fresh or chilled (excl. "Pandalidae" and "Crangon")                                                 |
      | Yellowtail amberjack (YTC) | Fresh  | Whole                     | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes "Scomberomorus spp.", jacks, crevalles "Caranx spp.", silver pomfrets "Pampus spp.", Pacific saury "Cololabis saira", scads "Decapterus spp.", capelin "Mallotus villosus", bonitos "Sarda spp.", marlins, sailfishes and spearfish "Istiophoridae"                                                   |
# ### 50 species
      | Edible crab (brown crab) (CRE) | Alive  | Whole                     | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled                                             |
      | Green crab (CRG) | Fresh  | Whole                     | 03063390 - Crabs, whether in shell or not, live, fresh or chilled (excl. "Cancer pagurus")                                     |
      | Red crab (CRR) | Fresh  | Whole                     | 03063390 - Crabs, whether in shell or not, live, fresh or chilled (excl. "Cancer pagurus")                                     |
      | Palinurid spiny lobsters nei (CRW) | Fresh  | Whole                     | 03063100 - Rock lobster and other sea crawfish "Palinurus spp., Panulirus spp. and Jasus spp.", whether in shell or not, live, fresh or chilled                                                                                 |
      | Common shrimp (CSH) | Fresh  | Whole                     | 03063510 - Shrimps "Crangon crangon", whether in shell or not, fresh or chilled                                                |
      | Common cuttlefish (CTC) | Fresh  | Whole                     | 03074210 - Cuttle fish "Sepia officinalis, Rossia macrosoma, Sepiola spp.", live, fresh or chilled, with or without shell      |
      | Cuttlefish, bobtail squids nei (CTL) | Fresh  | Whole                     | 03074210 - Cuttle fish "Sepia officinalis, Rossia macrosoma, Sepiola spp.", live, fresh or chilled, with or without shell      |
      | Edible crab (brown crab) (CRE) | Fresh  | Whole                     | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled                                             |
      | Octopuses nei (OCZ) | Fresh  | Whole                     | 03075100 - Octopus "Octopus spp.", live, fresh or chilled                                                                      |
      | Large-eyed rabbitfish (CYH) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
# ### 60 species
      | Portuguese dogfish (CYO) | Fresh  | Whole                     | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                                                     |
      | Longnose velvet dogfish (CYP) | Fresh  | Whole                | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                                                     |
      | Birdbeak dogfish (DCA) | Fresh  | Whole                     | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                                                     |
      | DAB | Fresh  | Whole                     | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae" (excl. lesser or Greenland halibut, Atlantic halibut, Pacific halibut, plaice, sole, turbot and megrim)       |
      | Large-eye dentex (DEL) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Dogfishes and hounds nei (DGH) | Fresh  | Whole                     | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                      |
      | Picked dogfish (DGS) | Fresh  | Whole                     | 03028115 - Fresh or chilled picked dogfish "Squalus acanthias" and catsharks "Scyliorhinus spp."                               |
      | Dogfish sharks nei (DGX) | Fresh  | Whole                     | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                      |
      | Common dolphinfish (DOL) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Dusky grouper (GPD) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
#### 70 species
      | Haddock (HAD) | Fresh  | Whole                     | 03025200 - Fresh or chilled haddock "Melanogrammus aeglefinus"                                                                 |
      | Norwegian skate (JAD) | Fresh  | Whole                     | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                         |
      | Common stingray (JDP) | Fresh  | Whole                     | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                         |
      | European lobster (LBE) | Fresh  | Whole                     | 03063291 - Whole lobsters "Homarus spp.", fresh or chilled                                                                                                      |
      | Four-spot megrim (LDB) | Fresh  | Whole                     | 03022910 - Fresh or chilled megrim "Lepidorhombus spp."                                                                        |
      | Atlantic redfishes nei (RED) | Fresh  | Whole                     | 03028939 - Fresh or chilled redfish "Sebastes spp." (excl. Sebastes marinus)                                                   |
      | Starry smooth-hound (SDS) | Fresh  | Whole                     | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                      |
      | Allis and twaite shads (SHD) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Smooth-hound (SMD) | Fresh  | Whole                     | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                     |
      | Lesser flying squid (TDQ) | Fresh  | Whole                     | 03074230 - Squid "Ommastrephes spp., Nototodarus spp., Sepioteuthis spp.", live, fresh or chilled                              |
#### 80 species
      | European flounder (FLE) | Fresh  | Whole                     | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae" (excl. lesser or Greenland halibut, Atlantic halibut, Pacific halibut, plaice, sole, turbot and megrim)                       |
      | Silky shark (FAL) | Fresh  | Whole                     | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                      |
      | Threadsail filefish (FIL) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Velvet belly (ETX) | Fresh  | Whole                     | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                                                                         |
      | Forkbeard (FOR) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Frigate and bullet tunas (FRZ) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Greater forkbeard (GFB) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Deep-sea red crab (KEF) | Fresh  | Whole                     | 03063390 - Crabs, whether in shell or not, live, fresh or chilled (excl. "Cancer pagurus")                                     |
      | Shagreen ray (RJF) | Fresh  | Whole                     | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                         |
      | Ballan wrasse (USB) | Fresh  | Whole                                  | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
### 90 species
      | Indo-Pacific sailfish (SFA) | Fresh  | Whole                     | 03024990 - Fresh or chilled Indian mackerels "Rastrelliger spp.", seerfishes "Scomberomorus spp.", jacks, crevalles "Caranx spp.", silver pomfrets "Pampus spp.", Pacific saury "Cololabis saira", scads "Decapterus spp.", capelin "Mallotus villosus", bonitos "Sarda spp.", marlins, sailfishes and spearfish "Istiophoridae"                                                   |
      | Norway lobster (NEP) | Fresh  | Whole                     | 03063400 - Norway lobsters "Nephrops norvegicus", whether in shell or not, live, fresh or chilled                              |
      | Wreckfish (WRF) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Saithe(=Pollock) (POK) | Fresh  | Whole                     | 03025300 - Fresh or chilled coalfish "Pollachius virens"                                                                       |
      | Ling (LIN) | Fresh  | Whole                     | 03025940 - Fresh or chilled ling "Molva spp."                                                                                   |
      | Garfish (GAR) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
      | Angler(=Monk) (MON) | Fresh  | Whole                     | 03028950 - Fresh or chilled monkfish "Lophius spp."                                                                            |
      | Mouse catshark (GAM) | Fresh  | Whole                     | 03028115 - Fresh or chilled picked dogfish "Squalus acanthias" and catsharks "Scyliorhinus spp."                               |
      | Greenland halibut (GHL) | Fresh  | Whole                     | 03022110 - Fresh or chilled lesser or Greenland halibut "Reinhardtius hippoglossoides"                                         |
      | Jumbo flying squid (GIS) | Frozen | Tube only                 | 03074391 - Squid "Ommastrephes spp., Nototodarus spp., Sepioteuthis spp.", frozen (excl. "Ommastrephes sagittatus")                                             |
#### 100 species
#      | Patagonian grenadier (GRM) | Fresh  | Filleted                  | 03044490 - Fresh or chilled fillets of fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae (excl. cod, coalfish and Boreogadus saida) |
#      | Atlantic halibut (HAL) | Fresh  | Whole                     | 03022130 - Fresh or chilled Atlantic halibut "Hippoglossus hippoglossus"                                                       |
#      | European hake (HKE) | Fresh  | Whole                     | 03025419 - Fresh or chilled hake "Merluccius spp." (excl. cape hake, deepwater hake and southern hake)                                                                            |
#      | Mediterranean slimehead (HPR) | Fresh  | Whole                                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                      |
#      | Frilled shark (HXC) | Fresh  | Whole                     | 03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                                                                           |
#      | Risso's smooth-head (PHO) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
#      | Cuckoo ray (RJN) | Fresh  | Whole                     | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                         |
#      | Starry ray (RJR) | Fresh  | Whole                     | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                         |
#      | Undulate ray (RJU) | Fresh  | Whole                     | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                         |
#      | Kingklip (KCP) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
##### 110 species
##      | King crabs (KCS) | Fresh  | Whole                     | 03063390 - Crabs, whether in shell or not, live, fresh or chilled (excl. "Cancer pagurus")                                                             |
##      | Saithe(=Pollock) (POK) | Fresh  | Whole                     | 03025300 - Fresh or chilled coalfish "Pollachius virens"                                                                       |
##      | Raja rays nei (SKA) | Fresh  | Whole                     | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                         |
##      | Tusk(=Cusk) (USK) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
##      | Escolar (LEC) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
##      | European lobster (LBE) | Alive  | Whole                     | 03063210 - Live lobsters "Homarus spp."                                                                                        |
##      | Leerfish (LEE) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
##      | Lemon sole (LEM) | Fresh  | Whole                     | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae" (excl. lesser or Greenland halibut, Atlantic halibut, Pacific halibut, plaice, sole, turbot and megrim)       |
##      | Megrims nei (LEZ) | Fresh  | Whole                     | 03022910 - Fresh or chilled megrim "Lepidorhombus spp."                                                                        |
##      | Ling (LIN) | Fresh  | Whole                     | 03025940 - Fresh or chilled ling "Molva spp."                                                                                  |
##### 120 species
#      | Velvet swimcrab (LIO) | Fresh  | Whole                     | 03063390 - Crabs, whether in shell or not, live, fresh or chilled (excl. "Cancer pagurus")                                                             |
#      | Longfin mako (LMA) | Fresh  | Whole                     |03028180 - Fresh or chilled dogfish and other sharks (excl. picked dogfish "Squalus acanthias", catsharks "Scyliorhinus spp.", porbeagle shark "Lamna nasus" and blue shark "Prionace glauca")                                                                          |
#      | Little tunny(=Atl.black skipj) (LTA) | Frozen | Whole                     | 03038929 - Frozen fish of the genus Euthynnus (excl. skipjack or stripe-bellied bonito and Kawakawa, and fish for industrial processing or preservation)                                                                                  |
#      | Lumpfish(=Lumpsucker) (LUM) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
#      | Dragonet (LYY) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
#      | Common sole (SOL) | Fresh  | Whole                     | 03022300 - Fresh or chilled sole "Solea spp."                                                                                  |
#      | Mullets nei (MUL) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
#      | Pandalus shrimps nei (PAN) | Fresh  | Whole                     | 03063590 - Cold-water shrimps and prawns "Pandalus spp.", whether in shell or not, live, fresh or chilled                      |
#      | Penaeus shrimps nei (PEN) | Fresh  | Whole                     | 03063990 - Crustaceans, fit for human consumption, whether in shell or not, live, fresh or chilled (excl. rock lobster and other sea crawfish, lobsters, crabs, Norway lobsters, shrimps, prawns and freshwater crayfish); flours, meals and pellets of crustaceans, fit for human consumption, fresh or chilled                            |
#      | Atlantic herring (HER) | Fresh  | Whole                     | 03024100 - Fresh or chilled herring "Clupea harengus, clupea pallasii"                                                        |
###### 130 species
##      | Periwinkles nei (PER) | Fresh  | Whole                     |03079100 - Live, fresh or chilled molluscs, even in shell (excl. oysters, scallops of the genera Pecten, Chlamys or Placopecten, mussels "Mytilus spp., Perna spp.", cuttle fish and squid, octopus "Octopus spp.", snails other than sea snails, clams, cockles and ark shells, abalone and stromboid conchs); fresh or chilled flours, meals and pellets of molluscs, fit for human consumption                                                                      |
##      | Common octopus (OCC) | Fresh  | Whole                     | 03075100 - Octopus "Octopus spp.", live, fresh or chilled                                                                      |
##      | Horned and musky octopuses (OCM) | Fresh  | Whole                     | 03075100 - Octopus "Octopus spp.", live, fresh or chilled                                                                      |
##      | Southern blue whiting (POS) | Fresh  | Filleted                  | 03044490 - Fresh or chilled fillets of fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae (excl. cod, coalfish and Boreogadus saida)                                    |
##      | Sunfish (MOP) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
##      | Atlantic mackerel (MAC) | Fresh  | Whole                     | 03024400 - Fresh or chilled mackerel "Scomber scombrus, Scomber australasicus, Scomber japonicus"                              |
##      | Patagonian rockcod (NOT) | Fresh  | Gutted, headed and tailed | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
##      | Norway lobster (NEP) | Alive  | Whole                     | 03063400 - Norway lobsters "Nephrops norvegicus", whether in shell or not, live, fresh or chilled                              |
##      | European squid (SQR) | Fresh  | Whole                     | 03074220 - Squid "Loligo spp.", live, fresh or chilled                                                                         |
##      | Common squids nei (SQC) | Fresh  | Whole                     | 03074220 - Squid "Loligo spp.", live, fresh or chilled                                                                         |
##### 140 species
##      | Wrasses, hogfishes, etc. nei (WRA) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
##      | Sturgeons nei (STU) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
##      | Turbot (TUR) | Fresh  | Whole                     | 03022400 - Fresh or chilled turbot "Psetta maxima"                                                                             |
##      | Tub gurnard (GUU) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
##      | Straightnose rabbitfish (RCT) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
##      | Topknot (ZGP) | Fresh  | Gutted                    | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae" (excl. lesser or Greenland halibut, Atlantic halibut, Pacific halibut, plaice, sole, turbot and megrim)       |
##      | Goldsinny-wrasse (TBR) | Alive  | Whole                     | 03019985 - Live saltwater fish (excl. ornamental fish, trout [Salmo trutta, Oncorhynchus mykiss, Oncorhynchus clarki, Oncorhynchus aguabonita, Oncorhynchus gilae, Oncorhynchus apache and Oncorhynchus chrysogaster], eels [Anguilla spp.], Atlantic and Pacific bluefin tunas [Thunnus thynnus, Thunnus orientalis] and southern bluefin tunas [Thunnus maccoyii])                                                                   |
##      | Rock cook (ENX) | Alive  | Whole                     | 03019985 - Live saltwater fish (excl. ornamental fish, trout [Salmo trutta, Oncorhynchus mykiss, Oncorhynchus clarki, Oncorhynchus aguabonita, Oncorhynchus gilae, Oncorhynchus apache and Oncorhynchus chrysogaster], eels [Anguilla spp.], Atlantic and Pacific bluefin tunas [Thunnus thynnus, Thunnus orientalis] and southern bluefin tunas [Thunnus maccoyii])                                                                   |
##      | Atlantic thornyhead (TJX) | Fresh  | Whole                     | 03028990 - Fresh or chilled fish, n.e.s.                                                                                       |
##      | Northern prawn (PRA) | Fresh  | Whole                     | 03063590 - Cold-water shrimps and prawns "Pandalus spp.", whether in shell or not, live, fresh or chilled                      |
### 150 species
  And add exporter 100 landings details as follows:
      | 01/09/2022 | B1005  | Baird's slickhead (ALC), Fresh, Whole, 03028990                      | 01 |
      | 02/09/2022 | B1005  | Alfonsinos nei (ALF), Fresh, Whole, 03028990                         | 02 |
      | 03/09/2022 | B1005  | Greater amberjack (AMB), Fresh, Whole, 03024990                      | 03 |
      | 04/09/2022 | B1005  | (PLA), Fresh, Whole, 03028990                                        | 04 |
      | 05/09/2022 | B1005  | European anchovy (ANE), Fresh, Whole, 03024200                       | 05 |
      | 06/09/2022 | B1005  | Spanish ling (SLI), Fresh, Whole, 03025940                           | 06 |
      | 07/09/2022 | B1005  | Blackbellied angler (ANK), Fresh, Whole, 03028950                    | 07 |
      | 08/09/2022 | B1005  | Blue antimora (ANT), Fresh, Whole, 03028990                          | 08 |
      | 09/09/2022 | B1005  | Iceland catshark (APQ), Fresh, Whole, 03028115                       | 09 |
      | 10/09/2022 | B1005  | Argentines (ARG), Fresh, Whole, 03028990                             | 10 |
# 10 Landings
      | 11/10/2021 | FH444  | Greater argentine (ARU), Fresh, Whole, 03028990                      | 01 |
      | 12/10/2021 | FH444  | Sand smelt (ATP), Fresh, Whole, 03028990                             | 02 |
      | 13/10/2021 | FH444  | Axillary seabream (SBA), Fresh, Whole, 03028510                      | 03 |
      | 14/10/2021 | FH444  | Bigeye tuna (BET), Fresh, Whole, 03023410                            | 04 |
      | 15/10/2021 | FH444  | Atlantic bluefin tuna (BFT), Fresh, Whole, 03023519                  | 05 |
      | 16/10/2021 | FH444  | (BIB), Fresh, Whole, 03025990                                        | 06 |
      | 17/10/2021 | FH444  | Marlins,sailfishes,etc. nei (BIL), Fresh, Whole, 03024990            | 07 |
      | 18/10/2021 | FH444  | Blue ling (BLI), Fresh, Whole, 03025940                              | 08 |
      | 19/10/2021 | FH444  | Brill (BLL), Fresh, Whole, 03022980                                  | 09 |
      | 21/10/2021 | FH444  | Black marlin (BLM), Fresh, Whole, 03024990                           | 10 |
# 20 Landings
      | 22/10/2021 | PW364  | Patagonian blennie (BLP), Frozen, Gutted, 03038990                   | 01 |
      | 23/10/2021 | PW364  | Bluefish (BLU), Frozen, Whole, 03038990                              | 02 |
      | 24/10/2021 | PW364  | Boarfish (BOC), Fresh, Whole, 03028990                               | 03 |
      | 25/10/2021 | PW364  | Bogue (BOG), Fresh, Whole, 03028990                                  | 04 |
      | 26/10/2021 | PW364  | Atlantic bonito (BON), Fresh, Whole, 03028990                        | 05 |
      | 27/10/2021 | PW364  | Black seabream (BRB), Fresh, Whole, 03028590                         | 06 |
      | 28/10/2021 | PW364  | Blackbelly rosefish (BRF), Fresh, Whole, 03028939                    | 07 |
      | 29/10/2021 | PW364  | Black scabbardfish (BSF), Fresh, Whole, 03028990                     | 08 |
      | 30/10/2021 | PW364  | Blue shark (BSH), Fresh, Gutted, 03028140                            | 09 |
      | 01/11/2021 | PW364  | European seabass (BSS), Fresh, Whole, 03028410                       | 10 |
# 30 Landings
      | 02/11/2021 | PH1190 | Blue marlin (BUM), Fresh, Whole, 03024990                            | 01 |
      | 03/11/2021 | PH1190 | Splendid alfonsino (BYS), Fresh, Whole, 03028990                     | 02 |
      | 04/11/2021 | PH1190 | Atlantic wolffish (CAA), Fresh, Whole, 03028990                      | 03 |
      | 05/11/2021 | PH1190 | Capelin (CAP), Fresh, Whole, 03024990                                | 04 |
      | 06/11/2021 | PH1190 | Wolffishes(=Catfishes) nei (CAT), Fresh, Whole, 03028990             | 05 |
      | 07/11/2021 | PH1190 | Witch flounder (WIT), Fresh, Whole, 03022980                         | 06 |
      | 08/11/2021 | PH1190 | Red bandfish (CBC), Fresh, Whole, 03028990                           | 07 |
      | 09/11/2021 | PH1190 | Bull shark (CCE), Fresh, Whole, 03028180                             | 08 |
      | 10/11/2021 | PH1190 | Blacktip shark (CCL), Fresh, Whole, 03028180                         | 09 |
      | 11/11/2021 | PH1190 | Rudderfish (CEO), Fresh, Whole, 03028990                             | 10 |
# 40 Landings
      | 12/11/2021 | PZ110  | Pike icefish (CES), Fresh, Filleted, 03044990                        | 01 |
      | 13/11/2021 | PZ110  | Wedge sole (CET), Fresh, Whole, 03022980                             | 02 |
      | 14/11/2021 | PZ110  | Black dogfish (CFB), Fresh, Whole, 03028180                          | 03 |
      | 15/11/2021 | PZ110  | Chilean jack mackerel (CJM), Fresh, Whole, 03024530                  | 04 |
      | 16/11/2021 | PZ110  | Rabbit fish (CMO), Fresh, Whole, 03028990                            | 05 |
      | 17/11/2021 | PZ110  | Atlantic cod (COD), Fresh, Whole, 03025110                           | 06 |
      | 18/11/2021 | PZ110  | European conger (COE), Fresh, Whole, 03028990                        | 07 |
      | 19/11/2021 | PZ110  | Corkwing wrasse (YFM), Fresh, Whole, 03028990                        | 08 |
      | 20/11/2021 | PZ110  | Common prawn (CPR), Fresh, Whole, 03063690                           | 09 |
      | 21/11/2021 | PZ110  | Yellowtail amberjack (YTC), Fresh, Whole, 03024990                   | 10 |
# 50 Landings
      | 22/11/2021 | SS229  | Edible crab (brown crab) (CRE), Alive, Whole, 03063310               | 01 |
      | 23/11/2021 | SS229  | Green crab (CRG), Fresh, Whole, 03063390                             | 02 |
      | 24/11/2021 | SS229  | Red crab (CRR), Fresh, Whole, 03063390                               | 03 |
      | 25/11/2021 | SS229  | Palinurid spiny lobsters nei (CRW), Fresh, Whole, 03063100           | 04 |
      | 26/11/2021 | SS229  | Common shrimp (CSH), Fresh, Whole, 03063510                          | 05 |
      | 27/11/2021 | SS229  | Common cuttlefish (CTC), Fresh, Whole, 03074210                      | 06 |
      | 28/11/2021 | SS229  | Cuttlefish, bobtail squids nei (CTL), Fresh, Whole, 03074210         | 07 |
      | 29/11/2021 | SS229  | Edible crab (brown crab) (CRE), Fresh, Whole, 03063310               | 08 |
      | 30/11/2021 | SS229  | Octopuses nei (OCZ), Fresh, Whole, 03075100                          | 09 |
      | 01/12/2021 | SS229  | Large-eyed rabbitfish (CYH), Fresh, Whole, 03028990                  | 10 |
# 60 Landings
      | 01/06/2022 | PL39   | Portuguese dogfish (CYO), Fresh, Whole, 03028180                     | 01 |
      | 02/06/2022 | PL39   | Longnose velvet dogfish (CYP), Fresh, Whole, 03028180                | 02 |
      | 03/06/2022 | PL39   | Birdbeak dogfish (DCA), Fresh, Whole, 03028180                       | 03 |
      | 04/06/2022 | PL39   | Common dab (DAB), Fresh, Whole, 03022980                             | 04 |
      | 05/06/2022 | PL39   | Large-eye dentex (DEL), Fresh, Whole, 03028990                       | 05 |
      | 06/06/2022 | PL39   | Dogfishes and hounds nei (DGH), Fresh, Whole, 03028180               | 06 |
      | 07/06/2022 | PL39   | Picked dogfish (DGS), Fresh, Whole, 03028115                         | 07 |
      | 08/06/2022 | PL39   | Dogfish sharks nei (DGX), Fresh, Whole, 03028180                     | 08 |
      | 09/06/2022 | PL39   | Common dolphinfish (DOL), Fresh, Whole, 03028990                     | 09 |
      | 10/06/2022 | PL39   | Dusky grouper (GPD), Fresh, Whole, 03028990                          | 10 |
# 70 Landings
      | 11/06/2022 | PL80   | Haddock (HAD), Fresh, Whole, 03025200                                | 01 |
      | 12/06/2022 | PL80   | Norwegian skate (JAD), Fresh, Whole, 03028200                        | 02 |
      | 13/06/2022 | PL80   | Common stingray (JDP), Fresh, Whole, 03028200                        | 03 |
      | 14/06/2022 | PL80   | European lobster (LBE), Fresh, Whole, 03063291                       | 04 |
      | 15/06/2022 | PL80   | Four-spot megrim (LDB), Fresh, Whole, 03022910                       | 05 |
      | 16/06/2022 | PL80   | Atlantic redfishes nei (RED), Fresh, Whole, 03028939                 | 06 |
      | 17/06/2022 | PL80   | Starry smooth-hound (SDS), Fresh, Whole, 03028180                    | 07 |
      | 18/06/2022 | PL80   | Allis and twaite shads (SHD), Fresh, Whole, 03028990                 | 08 |
      | 19/06/2022 | PL80   | Smooth-hound (SMD), Fresh, Whole, 03028180                           | 09 |
      | 20/06/2022 | PL80   | Lesser flying squid (TDQ), Fresh, Whole, 03074230                    | 10 |
# 80 Landings
      | 21/06/2022 | BD217  | European flounder (FLE), Fresh, Whole, 03022980                      | 01 |
      | 22/06/2022 | BD217  | Silky shark (FAL), Fresh, Whole, 03028180                            | 02 |
      | 23/06/2022 | BD217  | Threadsail filefish (FIL), Fresh, Whole, 03028990                    | 03 |
      | 24/06/2022 | BD217  | Velvet belly (ETX), Fresh, Whole, 03028180                           | 04 |
      | 25/06/2022 | BD217  | Forkbeard (FOR), Fresh, Whole, 03028990                              | 05 |
      | 26/06/2022 | BD217  | Frigate and bullet tunas (FRZ), Fresh, Whole, 03028990               | 06 |
      | 27/06/2022 | BD217  | Greater forkbeard (GFB), Fresh, Whole, 03028990                      | 07 |
      | 28/06/2022 | BD217  | Deep-sea red crab (KEF), Fresh, Whole, 03063390                      | 08 |
      | 29/06/2022 | BD217  | Shagreen ray (RJF), Fresh, Whole, 03028200                           | 09 |
      | 30/06/2022 | BD217  | Ballan wrasse (USB), Fresh, Whole, 03028990                          | 10 |
# 90 Landings
      | 01/07/2022 | BM557  | Indo-Pacific sailfish (SFA), Fresh, Whole, 03024990                  | 01 |
      | 02/07/2022 | BM557  | Norway lobster (NEP), Fresh, Whole, 03063400                         | 02 |
      | 03/07/2022 | BM557  | Wreckfish (WRF), Fresh, Whole, 03028990                              | 03 |
      | 04/07/2022 | BM557  | Saithe(=Pollock) (POK), Fresh, Whole, 03025300                       | 04 |
      | 05/07/2022 | BM557  | Ling (LIN), Fresh, Whole, 03025940                                   | 05 |
      | 06/07/2022 | BM557  | Garfish (GAR), Fresh, Whole, 03028990                                | 06 |
      | 07/07/2022 | BM557  | Angler(=Monk) (MON), Fresh, Whole, 03028950                          | 07 |
      | 08/07/2022 | BM557  | Mouse catshark (GAM), Fresh, Whole, 03028115                         | 08 |
      | 09/07/2022 | BM557  | Greenland halibut (GHL), Fresh, Whole, 03022110                      | 09 |
      | 10/07/2022 | BM557  | Jumbo flying squid (GIS), Frozen, Tube only, 03074391                | 10 |
# 100 Landings
#      | 11/07/2022 | FH121  | Patagonian grenadier (GRM), Fresh, Filleted, 03044490                | 01 |
#      | 12/07/2022 | FH121  | Atlantic halibut (HAL), Fresh, Whole, 03022130                       | 02 |
#      | 13/07/2022 | FH121  | European hake (HKE), Fresh, Whole, 03025419                          | 03 |
#      | 14/07/2022 | FH121  | Mediterranean slimehead (HPR), Fresh, Whole, 03028990                | 04 |
#      | 15/07/2022 | FH121  | Frilled shark (HXC), Fresh, Whole, 03028180                          | 05 |
#      | 16/07/2022 | FH121  | Risso's smooth-head (PHO), Fresh, Whole, 03028990                    | 06 |
#      | 17/07/2022 | FH121  | Cuckoo ray (RJN), Fresh, Whole, 03028200                             | 07 |
#      | 18/07/2022 | FH121  | Starry ray (RJR), Fresh, Whole, 03028200                             | 08 |
#      | 19/07/2022 | FH121  | Undulate ray (RJU), Fresh, Whole, 03028200                           | 09 |
#      | 20/07/2022 | FH121  | Kingklip (KCP), Fresh, Whole, 03028990                               | 10 |
## 110 Landings
#      | 21/07/2022 | SS197  | King crabs (KCS), Fresh, Whole, 03063390                             | 01 |
#      | 22/07/2022 | SS197  | Saithe(=Pollock) (POK), Fresh, Whole, 03025300                       | 02 |
#      | 23/07/2022 | SS197  | Raja rays nei (SKA), Fresh, Whole, 03028200                          | 03 |
#      | 24/07/2022 | SS197  | Tusk(=Cusk) (USK), Fresh, Whole, 03028990                            | 04 |
#      | 25/07/2022 | SS197  | Escolar (LEC), Fresh, Whole, 03028990                                | 05 |
#      | 26/07/2022 | SS197  | European lobster (LBE), Alive, Whole, 03063210                       | 06 |
#      | 27/07/2022 | SS197  | Leerfish (LEE), Fresh, Whole, 03028990                               | 07 |
#      | 28/07/2022 | SS197  | Lemon sole (LEM), Fresh, Whole, 03022980                             | 08 |
#      | 29/07/2022 | SS197  | Megrims nei (LEZ), Fresh, Whole, 03022910                            | 09 |
#      | 30/07/2022 | SS197  | Ling (LIN), Fresh, Whole, 03025940                                   | 10 |
## 120 Landings
#      | 31/07/2022 | PZ199  | Velvet swimcrab (LIO), Fresh, Whole, 03063390                        | 01 |
#      | 01/08/2022 | PZ199  | Longfin mako (LMA), Fresh, Whole, 03028180                           | 02 |
#      | 02/08/2022 | PZ199  | Little tunny(=Atl.black skipj) (LTA), Frozen, Whole, 03038929        | 03 |
#      | 03/08/2022 | PZ199  | Lumpfish(=Lumpsucker) (LUM), Fresh, Whole, 03028990                  | 04 |
#      | 04/08/2022 | PZ199  | Dragonet (LYY), Fresh, Whole, 03028990                               | 05 |
#      | 05/08/2022 | PZ199  | Common sole (SOL), Fresh, Whole, 03022300                            | 06 |
#      | 06/08/2022 | PZ199  | Mullets nei (MUL), Fresh, Whole, 03028990                            | 07 |
#      | 07/08/2022 | PZ199  | Pandalus shrimps nei (PAN), Fresh, Whole, 03063590                   | 08 |
#      | 08/08/2022 | PZ199  | Penaeus shrimps nei (PEN), Fresh, Whole, 03063990                    | 09 |
#      | 09/08/2022 | PZ199  | Atlantic herring (HER), Fresh, Whole, 03024100                       | 10 |
#### 130 Landings
#      | 10/08/2022 | PZ193  | Periwinkles nei (PER), Fresh, Whole, 03079100                        | 01 |
#      | 11/08/2022 | PZ193  | Common octopus (OCC), Fresh, Whole, 03075100                         | 02 |
#      | 12/08/2022 | PZ193  | Horned and musky octopuses (OCM), Fresh, Whole, 03075100             | 03 |
#      | 13/08/2022 | PZ193  | Southern blue whiting (POS), Fresh, Filleted, 03044490              | 04 |
#      | 14/08/2022 | PZ193  | Sunfish (MOP), Fresh, Whole, 03028990                                | 05 |
#      | 15/08/2022 | PZ193  | Atlantic mackerel (MAC), Fresh, Whole, 03024400                      | 06 |
#      | 16/08/2022 | PZ193  | Patagonian rockcod (NOT), Fresh, Gutted, headed and tailed, 03028990 | 07 |
#      | 17/08/2022 | PZ193  | Norway lobster (NEP), Alive, Whole, 03063400                         | 08 |
#      | 18/08/2022 | PZ193  | European squid (SQR), Fresh, Whole, 03074220                         | 09 |
#      | 19/08/2022 | PZ193  | Common squids nei (SQC), Fresh, Whole, 03074220                      | 10 |
### 140 Landings
#      | 20/08/2022 | FH76   | Wrasses, hogfishes, etc. nei (WRA), Fresh, Whole, 03028990           | 01 |
#      | 21/08/2022 | FH76   | Sturgeons nei (STU), Fresh, Whole, 03028990                          | 02 |
#      | 22/08/2022 | FH76   | Turbot (TUR), Fresh, Whole, 03022400                                 | 03 |
#      | 23/08/2022 | FH76   | Tub gurnard (GUU), Fresh, Whole, 03028990                            | 04 |
#      | 24/08/2022 | FH76   | Straightnose rabbitfish (RCT), Fresh, Whole, 03028990                | 05 |
#      | 25/08/2022 | FH76   | Topknot (ZGP), Fresh, Gutted, 03022980                               | 06 |
#      | 26/08/2022 | FH76   | Goldsinny-wrasse (TBR), Alive, Whole, 03019985                       | 07 |
#      | 27/08/2022 | FH76   | Rock cook (ENX), Alive, Whole, 03019985                              | 08 |
#      | 28/08/2022 | FH76   | Atlantic thornyhead (TJX), Fresh, Whole, 03028990                    | 09 |
#      | 29/08/2022 | FH76   | Northern prawn (PRA), Fresh, Whole, 03063590                         | 10 |
## 150 Landings
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    And I validate Catch certificate Offline Confirmation page
    And I navigate back to "Create a UK catch certificate" Dashboard page
    Then I should see the offline document status as "PENDING" on the CC Dashboard page
    And I sign out external app completely


  Scenario:2 - Verify that the Exporter can add more than 50 landings to the Catch certificate
    Given I logged in to the MMO application as:
    ##      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 31 98 25 22 14 16 | TestAuto12 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-1 PRODUCT WITH 100 LANDINGS- REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 1 species with their state and presentation as follows:
      | European lobster (LBE) | Alive | Whole | 03063210 - Live lobsters "Homarus spp." |

    And add exporter 51 landings details as follows:
      | 01/09/2022 | B1005  | European lobster (LBE), Alive, Whole, 03063210 | 01 |
      | 02/09/2022 | B1005  | European lobster (LBE), Alive, Whole, 03063210 | 02 |
      | 03/09/2022 | B1005  | European lobster (LBE), Alive, Whole, 03063210 | 03 |
      | 04/09/2022 | B1005  | European lobster (LBE), Alive, Whole, 03063210 | 04 |
      | 05/09/2022 | B1005  | European lobster (LBE), Alive, Whole, 03063210 | 05 |
      | 06/09/2022 | B1005  | European lobster (LBE), Alive, Whole, 03063210 | 06 |
      | 07/09/2022 | B1005  | European lobster (LBE), Alive, Whole, 03063210 | 07 |
      | 08/09/2022 | B1005  | European lobster (LBE), Alive, Whole, 03063210 | 08 |
      | 09/09/2022 | B1005  | European lobster (LBE), Alive, Whole, 03063210 | 09 |
      | 10/09/2022 | B1005  | European lobster (LBE), Alive, Whole, 03063210 | 10 |
# 10 Landings
      | 11/10/2021 | FH444  | European lobster (LBE), Alive, Whole, 03063210 | 01 |
      | 12/10/2021 | FH444  | European lobster (LBE), Alive, Whole, 03063210 | 02 |
      | 13/10/2021 | FH444  | European lobster (LBE), Alive, Whole, 03063210 | 03 |
      | 14/10/2021 | FH444  | European lobster (LBE), Alive, Whole, 03063210 | 04 |
      | 15/10/2021 | FH444  | European lobster (LBE), Alive, Whole, 03063210 | 05 |
      | 16/10/2021 | FH444  | European lobster (LBE), Alive, Whole, 03063210 | 06 |
      | 17/10/2021 | FH444  | European lobster (LBE), Alive, Whole, 03063210 | 07 |
      | 18/10/2021 | FH444  | European lobster (LBE), Alive, Whole, 03063210 | 08 |
      | 19/10/2021 | FH444  | European lobster (LBE), Alive, Whole, 03063210 | 09 |
      | 21/10/2021 | FH444  | European lobster (LBE), Alive, Whole, 03063210 | 10 |
# 20 Landings
      | 22/10/2021 | PW364  | European lobster (LBE), Alive, Whole, 03063210 | 01 |
      | 23/10/2021 | PW364  | European lobster (LBE), Alive, Whole, 03063210 | 02 |
      | 24/10/2021 | PW364  | European lobster (LBE), Alive, Whole, 03063210 | 03 |
      | 25/10/2021 | PW364  | European lobster (LBE), Alive, Whole, 03063210 | 04 |
      | 26/10/2021 | PW364  | European lobster (LBE), Alive, Whole, 03063210 | 05 |
      | 27/10/2021 | PW364  | European lobster (LBE), Alive, Whole, 03063210 | 06 |
      | 28/10/2021 | PW364  | European lobster (LBE), Alive, Whole, 03063210 | 07 |
      | 29/10/2021 | PW364  | European lobster (LBE), Alive, Whole, 03063210 | 08 |
      | 30/10/2021 | PW364  | European lobster (LBE), Alive, Whole, 03063210 | 09 |
      | 01/11/2021 | PW364  | European lobster (LBE), Alive, Whole, 03063210 | 10 |
# 30 Landings
      | 02/11/2021 | PH1190 | European lobster (LBE), Alive, Whole, 03063210 | 01 |
      | 03/11/2021 | PH1190 | European lobster (LBE), Alive, Whole, 03063210 | 02 |
      | 04/11/2021 | PH1190 | European lobster (LBE), Alive, Whole, 03063210 | 03 |
      | 05/11/2021 | PH1190 | European lobster (LBE), Alive, Whole, 03063210 | 04 |
      | 06/11/2021 | PH1190 | European lobster (LBE), Alive, Whole, 03063210 | 05 |
      | 07/11/2021 | PH1190 | European lobster (LBE), Alive, Whole, 03063210 | 06 |
      | 08/11/2021 | PH1190 | European lobster (LBE), Alive, Whole, 03063210 | 07 |
      | 09/11/2021 | PH1190 | European lobster (LBE), Alive, Whole, 03063210 | 08 |
      | 10/11/2021 | PH1190 | European lobster (LBE), Alive, Whole, 03063210 | 09 |
      | 11/11/2021 | PH1190 | European lobster (LBE), Alive, Whole, 03063210 | 10 |
# 40 Landings
      | 12/11/2021 | PZ110  | European lobster (LBE), Alive, Whole, 03063210 | 01 |
      | 13/11/2021 | PZ110  | European lobster (LBE), Alive, Whole, 03063210 | 02 |
      | 14/11/2021 | PZ110  | European lobster (LBE), Alive, Whole, 03063210 | 03 |
      | 15/11/2021 | PZ110  | European lobster (LBE), Alive, Whole, 03063210 | 04 |
      | 16/11/2021 | PZ110  | European lobster (LBE), Alive, Whole, 03063210 | 05 |
      | 17/11/2021 | PZ110  | European lobster (LBE), Alive, Whole, 03063210 | 06 |
      | 18/11/2021 | PZ110  | European lobster (LBE), Alive, Whole, 03063210 | 07 |
      | 19/11/2021 | PZ110  | European lobster (LBE), Alive, Whole, 03063210 | 08 |
      | 20/11/2021 | PZ110  | European lobster (LBE), Alive, Whole, 03063210 | 09 |
      | 21/11/2021 | PZ110  | European lobster (LBE), Alive, Whole, 03063210 | 10 |
# 50 Landings
      | 22/11/2021 | SS229  | European lobster (LBE), Alive, Whole, 03063210 | 01 |
#      | 23/11/2021 | SS229  | European lobster (LBE), Alive, Whole, 03063210 | 02 |
#      | 24/11/2021 | SS229  | European lobster (LBE), Alive, Whole, 03063210 | 03 |
#      | 25/11/2021 | SS229  | European lobster (LBE), Alive, Whole, 03063210 | 04 |
#      | 26/11/2021 | SS229  | European lobster (LBE), Alive, Whole, 03063210 | 05 |
#      | 27/11/2021 | SS229  | European lobster (LBE), Alive, Whole, 03063210 | 06 |
#      | 28/11/2021 | SS229  | European lobster (LBE), Alive, Whole, 03063210 | 07 |
#      | 29/11/2021 | SS229  | European lobster (LBE), Alive, Whole, 03063210 | 08 |
#      | 30/11/2021 | SS229  | European lobster (LBE), Alive, Whole, 03063210 | 09 |
#      | 01/12/2021 | SS229  | European lobster (LBE), Alive, Whole, 03063210 | 10 |
## 60 Landings
#      | 01/06/2022 | PL39   | European lobster (LBE), Alive, Whole, 03063210 | 01 |
#      | 02/06/2022 | PL39   | European lobster (LBE), Alive, Whole, 03063210 | 02 |
#      | 03/06/2022 | PL39   | European lobster (LBE), Alive, Whole, 03063210 | 03 |
#      | 04/06/2022 | PL39   | European lobster (LBE), Alive, Whole, 03063210 | 04 |
#      | 05/06/2022 | PL39   | European lobster (LBE), Alive, Whole, 03063210 | 05 |
#      | 06/06/2022 | PL39   | European lobster (LBE), Alive, Whole, 03063210 | 06 |
#      | 07/06/2022 | PL39   | European lobster (LBE), Alive, Whole, 03063210 | 07 |
#      | 08/06/2022 | PL39   | European lobster (LBE), Alive, Whole, 03063210 | 08 |
#      | 09/06/2022 | PL39   | European lobster (LBE), Alive, Whole, 03063210 | 09 |
#      | 10/06/2022 | PL39   | European lobster (LBE), Alive, Whole, 03063210 | 10 |
## 70 Landings
#      | 11/06/2022 | PL80   | European lobster (LBE), Alive, Whole, 03063210 | 01 |
#      | 12/06/2022 | PL80   | European lobster (LBE), Alive, Whole, 03063210 | 02 |
#      | 13/06/2022 | PL80   | European lobster (LBE), Alive, Whole, 03063210 | 03 |
#      | 14/06/2022 | PL80   | European lobster (LBE), Alive, Whole, 03063210 | 04 |
#      | 15/06/2022 | PL80   | European lobster (LBE), Alive, Whole, 03063210 | 05 |
#      | 16/06/2022 | PL80   | European lobster (LBE), Alive, Whole, 03063210 | 06 |
#      | 17/06/2022 | PL80   | European lobster (LBE), Alive, Whole, 03063210 | 07 |
#      | 18/06/2022 | PL80   | European lobster (LBE), Alive, Whole, 03063210 | 08 |
#      | 19/06/2022 | PL80   | European lobster (LBE), Alive, Whole, 03063210 | 09 |
#      | 20/06/2022 | PL80   | European lobster (LBE), Alive, Whole, 03063210 | 10 |
## 80 Landings
#      | 21/06/2022 | BD217  | European lobster (LBE), Alive, Whole, 03063210 | 01 |
#      | 22/06/2022 | BD217  | European lobster (LBE), Alive, Whole, 03063210 | 02 |
#      | 23/06/2022 | BD217  | European lobster (LBE), Alive, Whole, 03063210 | 03 |
#      | 24/06/2022 | BD217  | European lobster (LBE), Alive, Whole, 03063210 | 04 |
#      | 25/06/2022 | BD217  | European lobster (LBE), Alive, Whole, 03063210 | 05 |
#      | 26/06/2022 | BD217  | European lobster (LBE), Alive, Whole, 03063210 | 06 |
#      | 27/06/2022 | BD217  | European lobster (LBE), Alive, Whole, 03063210 | 07 |
#      | 28/06/2022 | BD217  | European lobster (LBE), Alive, Whole, 03063210 | 08 |
#      | 29/06/2022 | BD217  | European lobster (LBE), Alive, Whole, 03063210 | 09 |
#      | 30/06/2022 | BD217  | European lobster (LBE), Alive, Whole, 03063210 | 10 |
## 90 Landings
#      | 01/07/2022 | BM557  | European lobster (LBE), Alive, Whole, 03063210 | 01 |
#      | 02/07/2022 | BM557  | European lobster (LBE), Alive, Whole, 03063210 | 02 |
#      | 03/07/2022 | BM557  | European lobster (LBE), Alive, Whole, 03063210 | 03 |
#      | 04/07/2022 | BM557  | European lobster (LBE), Alive, Whole, 03063210 | 04 |
#      | 05/07/2022 | BM557  | European lobster (LBE), Alive, Whole, 03063210 | 05 |
#      | 06/07/2022 | BM557  | European lobster (LBE), Alive, Whole, 03063210 | 06 |
#      | 07/07/2022 | BM557  | European lobster (LBE), Alive, Whole, 03063210 | 07 |
#      | 08/07/2022 | BM557  | European lobster (LBE), Alive, Whole, 03063210 | 08 |
#      | 09/07/2022 | BM557  | European lobster (LBE), Alive, Whole, 03063210 | 09 |
#      | 10/07/2022 | BM557  | European lobster (LBE), Alive, Whole, 03063210 | 10 |
## 100 Landings
#      | 11/07/2022 | FH121  | European lobster (LBE), Alive, Whole, 03063210 | 07 |
#      | 12/07/2022 | FH121  | European lobster (LBE), Alive, Whole, 03063210 | 02 |
#      | 13/07/2022 | FH121  | European lobster (LBE), Alive, Whole, 03063210 | 03 |
#      | 14/07/2022 | FH121  | European lobster (LBE), Alive, Whole, 03063210 | 04 |
#      | 15/07/2022 | FH121  | European lobster (LBE), Alive, Whole, 03063210 | 05 |
#      | 16/07/2022 | FH121  | European lobster (LBE), Alive, Whole, 03063210 | 06 |
#      | 17/07/2022 | FH121  | European lobster (LBE), Alive, Whole, 03063210 | 07 |
#      | 18/07/2022 | FH121  | European lobster (LBE), Alive, Whole, 03063210 | 08 |
#      | 19/07/2022 | FH121  | European lobster (LBE), Alive, Whole, 03063210 | 09 |
#      | 20/07/2022 | FH121  | European lobster (LBE), Alive, Whole, 03063210 | 10 |
## 110 Landings
#      | 21/07/2022 | SS197  | European lobster (LBE), Alive, Whole, 03063210 | 01 |
#      | 22/07/2022 | SS197  | European lobster (LBE), Alive, Whole, 03063210 | 02 |
#      | 23/07/2022 | SS197  | European lobster (LBE), Alive, Whole, 03063210 | 03 |
#      | 24/07/2022 | SS197  | European lobster (LBE), Alive, Whole, 03063210 | 04 |
#      | 25/07/2022 | SS197  | European lobster (LBE), Alive, Whole, 03063210 | 05 |
#      | 26/07/2022 | SS197  | European lobster (LBE), Alive, Whole, 03063210 | 06 |
#      | 27/07/2022 | SS197  | European lobster (LBE), Alive, Whole, 03063210 | 07 |
#      | 28/07/2022 | SS197  | European lobster (LBE), Alive, Whole, 03063210 | 08 |
#      | 29/07/2022 | SS197  | European lobster (LBE), Alive, Whole, 03063210 | 09 |
#      | 30/07/2022 | SS197  | European lobster (LBE), Alive, Whole, 03063210 | 10 |
## 120 Landings
#      | 31/07/2022 | PZ199  | European lobster (LBE), Alive, Whole, 03063210 | 01 |
#      | 01/08/2022 | PZ199  | European lobster (LBE), Alive, Whole, 03063210 | 02 |
#      | 02/08/2022 | PZ199  | European lobster (LBE), Alive, Whole, 03063210 | 03 |
#      | 03/08/2022 | PZ199  | European lobster (LBE), Alive, Whole, 03063210 | 04 |
#      | 04/08/2022 | PZ199  | European lobster (LBE), Alive, Whole, 03063210 | 05 |
#      | 05/08/2022 | PZ199  | European lobster (LBE), Alive, Whole, 03063210 | 06 |
#      | 06/08/2022 | PZ199  | European lobster (LBE), Alive, Whole, 03063210 | 07 |
#      | 07/08/2022 | PZ199  | European lobster (LBE), Alive, Whole, 03063210 | 08 |
#      | 08/08/2022 | PZ199  | European lobster (LBE), Alive, Whole, 03063210 | 09 |
#      | 09/08/2022 | PZ199  | European lobster (LBE), Alive, Whole, 03063210 | 10 |
## 130 Landings
#      | 10/08/2022 | PZ193  | European lobster (LBE), Alive, Whole, 03063210 | 01 |
#      | 11/08/2022 | PZ193  | European lobster (LBE), Alive, Whole, 03063210 | 02 |
#      | 12/08/2022 | PZ193  | European lobster (LBE), Alive, Whole, 03063210 | 03 |
#      | 13/08/2022 | PZ193  | European lobster (LBE), Alive, Whole, 03063210 | 04 |
#      | 14/08/2022 | PZ193  | European lobster (LBE), Alive, Whole, 03063210 | 05 |
#      | 15/08/2022 | PZ193  | European lobster (LBE), Alive, Whole, 03063210 | 06 |
#      | 16/08/2022 | PZ193  | European lobster (LBE), Alive, Whole, 03063210 | 07 |
#      | 17/08/2022 | PZ193  | European lobster (LBE), Alive, Whole, 03063210 | 08 |
#      | 18/08/2022 | PZ193  | European lobster (LBE), Alive, Whole, 03063210 | 09 |
#      | 19/08/2022 | PZ193  | European lobster (LBE), Alive, Whole, 03063210 | 10 |
## 140 Landings
#      | 20/08/2022 | FH76   | European lobster (LBE), Alive, Whole, 03063210 | 01 |
#      | 21/08/2022 | FH76   | European lobster (LBE), Alive, Whole, 03063210 | 02 |
#      | 22/08/2022 | FH76   | European lobster (LBE), Alive, Whole, 03063210 | 03 |
#      | 23/08/2022 | FH76   | European lobster (LBE), Alive, Whole, 03063210 | 04 |
#      | 24/08/2022 | FH76   | European lobster (LBE), Alive, Whole, 03063210 | 05 |
#      | 25/08/2022 | FH76   | European lobster (LBE), Alive, Whole, 03063210 | 06 |
#      | 26/08/2022 | FH76   | European lobster (LBE), Alive, Whole, 03063210 | 07 |
#      | 27/08/2022 | FH76   | European lobster (LBE), Alive, Whole, 03063210 | 08 |
#      | 28/08/2022 | FH76   | European lobster (LBE), Alive, Whole, 03063210 | 09 |
#      | 29/08/2022 | FH76   | European lobster (LBE), Alive, Whole, 03063210 | 10 |
# 150 Landings
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    And I validate the document number from Confirmation page
    And I sign out external app completely
