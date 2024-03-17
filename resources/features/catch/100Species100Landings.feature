Feature: FES Exporter can create a CC with 100 products and landings
  As an Exporter, I am able to create a catch certificate with 100 products & landings
  So that I can export all the products in 1 certificate.


  @perfsa
  Scenario:1 - Verify that the Exporter can add more than 100 Species and 100 landings to the Catch certificate
    Given I logged in to the MMO application as:
    #      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
      | 31 98 25 22 14 16 | TestAuto12 |
#      | 61 19 12 01 76 29 | TestAuto12         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-100 SPECIES LANDINGS REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 100 species with their state and presentation as follows:
      | MAC | Fresh  | Whole | 03024530 - Fresh or chilled Chilean jack mackerel "Trachurus murphyi"|
#      | BSF | Fresh | Gutted | 03028990 - Fresh or chilled fish, n.e.s. |
#      | COD | Fresh | Gutted | 03025110 - Fresh or chilled cod "Gadus morhua"|
#      | HER | Fresh | Gutted  | 03024100 - Fresh or chilled herring "Clupea harengus, clupea pallasii" |
#      | COD | Fresh | Filleted | 03044410 - Fresh or chilled fillets of cod "Gadus morhua, Gadus ogac, Gadus macrocephalus" and of Boreogadus saida |
#      | MAS | Fresh | Whole     | 03024400 - Fresh or chilled mackerel "Scomber scombrus, Scomber australasicus, Scomber japonicus"    |
#      | BSH | Fresh | Fins only | 03029200 - Fresh or chilled shark fins   |
#      | BYS | Fresh | Whole     | 03028990 - Fresh or chilled fish, n.e.s. |
#      | CPR | Fresh | Whole | 03063690 - Shrimps and prawns, whether in shell or not, live, fresh or chilled (excl. "Pandalidae" and "Crangon") |
#      | CRE | Fresh | Whole | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled |
#      | MAC | Fresh  | Gutted and headed            | 03024400 - Fresh or chilled mackerel "Scomber scombrus, Scomber australasicus, Scomber japonicus"                                                                                               |
#      | MAC | Fresh  | Gutted                       | 03024530 - Fresh or chilled Chilean jack mackerel "Trachurus murphyi"|
#      | MAC | Fresh  | Filleted                     | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
#      | MAC | Fresh  | Filleted and skinned         | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
#      | MAC | Frozen | Whole                        | 03035410 - Frozen mackerel "Scomber scombrus, Scomber japonicus"                                                                                                                                |
#      | MAC | Frozen | Gutted                       | 03035410 - Frozen mackerel "Scomber scombrus, Scomber japonicus"                                                                                                                                |
#      | MAC | Frozen | Filleted                     | 03048949 - Frozen fillets of mackerel "Scomber scombrus, Scomber japonicus" and fish of the species Orcynopsis unicolor                                                                         |
#      | MAC | Frozen | Filleted and skinned         | 03048949 - Frozen fillets of mackerel "Scomber scombrus, Scomber japonicus" and fish of the species Orcynopsis unicolor                                                                         |
#      | MAC | Frozen | Gutted and headed            | 03035410 - Frozen mackerel "Scomber scombrus, Scomber japonicus"                                                                                                                                |
## 10 species
#      | LIN | Fresh  | Whole                        | 03025940 - Fresh or chilled ling "Molva spp."                                                                                                                                                   |
#      | LIN | Fresh  | Filleted and skinned         | 03044490 - Fresh or chilled fillets of fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae                      |
#      | LIN | Fresh  | Gutted                       | 03025940 - Fresh or chilled ling "Molva spp."                                                                                                                                                   |
#      | LIN | Fresh  | Filleted                     | 03044490 - Fresh or chilled fillets of fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae                      |
#      | LIN | Fresh  | Gutted and headed            | 03025940 - Fresh or chilled ling "Molva spp."                                                                                                                                                   |
#      | LIN | Frozen | Whole                        | 03036980 - Frozen ling "Molva spp."                                                                                                                                                             |
#      | LIN | Frozen | Gutted                       | 03036980 - Frozen ling "Molva spp."                                                                                                                                                             |
#      | LIN | Frozen | Filleted                     | 03047980 - Frozen fillets of ling "Molva spp."                                                                                                                                                  |
#      | LIN | Frozen | Filleted and skinned         | 03047980 - Frozen fillets of ling "Molva spp."                                                                                                                                                  |
#      | LIN | Fresh  | Filleted with skin and bones | 03047980 - Frozen fillets of ling "Molva spp."                                                                                                                                                  |
## 20 species
#      | MEG | Fresh  | Whole                        | 03022910 - Fresh or chilled megrim "Lepidorhombus spp."                                                                                                                                         |
#      | SOS | Fresh  | Gutted                       | 03022300 - Fresh or chilled sole "Solea spp."                                                                                                                                                   |
#      | MEG | Fresh  | Headed, head off             | 03022910 - Fresh or chilled megrim "Lepidorhombus spp."                                                                                                                                         |
#      | MEG | Frozen | Whole                        | 03033985 - Frozen flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Citharidae"                                                                                  |
#      | MEG | Frozen | Filleted                     | 03048350 - Frozen fillets of megrim "Lepidorhombus spp."                                                                                                                                        |
#      | BLI | Fresh  | Whole                        | 03025940 - Fresh or chilled ling "Molva spp."                                                                                                                                                   |
#      | MUL | Fresh  | Filleted and skinned         | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
#      | MUL | Fresh  | Gutted                       | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
#      | RJO | Fresh  | Gutted                       | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                                                                                          |
#      | SAO | Frozen | Gutted, headed and tailed    | 03036990 - Frozen fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae                                           |
## 30 species
#      | MON | Fresh  | Whole                        | 03028950 - Fresh or chilled monkfish "Lophius spp."                                                                                                                                             |
#      | MON | Fresh  | Gutted                       | 03028950 - Fresh or chilled monkfish "Lophius spp."                                                                                                                                             |
#      | MON | Fresh  | Filleted and skinned         | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
#      | MON | Fresh  | Filleted                     | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
#      | MON | Fresh  | Gutted and headed            | 03028950 - Fresh or chilled monkfish "Lophius spp."                                                                                                                                             |
#      | MON | Fresh  | Headed, head off             | 03028950 - Fresh or chilled monkfish "Lophius spp."                                                                                                                                             |
#      | MON | Frozen | Whole                        | 03038965 - Frozen monkfish "Lophius spp."                                                                                                                                                       |
#      | MON | Frozen | Gutted                       | 03038965 - Frozen monkfish "Lophius spp."                                                                                                                                                       |
#      | MON | Frozen | Gutted and headed            | 03038965 - Frozen monkfish "Lophius spp."                                                                                                                                                       |
#      | MON | Frozen | Filleted                     | 03048960 - Frozen fillets of monkfish "Lophius spp."                                                                                                                                            |
## 40 species
#      | POL | Fresh  | Whole                        | 03025930 - Fresh or chilled pollack "Pollachius pollachius"                                                                                                                                     |
#      | POL | Fresh  | Headed, head off             | 03025930 - Fresh or chilled pollack "Pollachius pollachius"                                                                                                                                     |
#      | POL | Fresh  | Gutted                       | 03025930 - Fresh or chilled pollack "Pollachius pollachius"                                                                                                                                     |
#      | POL | Fresh  | Filleted                     | 03044490 - Fresh or chilled fillets of fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae                      |
#      | POL | Fresh  | Gutted and headed            | 03025930 - Fresh or chilled pollack "Pollachius pollachius"                                                                                                                                     |
#      | BOC | Fresh  | Whole                        | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
#      | POL | Frozen | Gutted                       | 03036950 - Frozen pollack "Pollachius pollachius"                                                                                                                                               |
#      | BSH | Fresh  | Whole                        | 03028140 - Fresh or chilled blue shark "Prionace glauca"                                                                                                                                        |
#      | POL | Frozen | Filleted and skinned         | 03047990 - Frozen fillets of fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae                                |
#      | POL | Salted | Salted and gutted            | 03053990 - Fillets of fish, dried, salted or in brine, but not smoked                                                                                                                           |
## 50 species
#      | BLL | Fresh  | Whole                        | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae"                                                                        |
#      | CTL | Fresh  | Whole                        | 03074210 - Cuttle fish "Sepia officinalis, Rossia macrosoma, Sepiola spp.", live, fresh or chilled, with or without shell                                                                       |
#      | RJI | Fresh  | Gutted                       | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                                                                                          |
#      | MON | Fresh  | Filleted with skin and bones | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
#      | SKA | Fresh  | Other presentations          | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                                                                                          |
#      | SYC | Fresh  | Whole                        | 03028115 - Fresh or chilled picked dogfish "Squalus acanthias" and catsharks "Scyliorhinus spp."                                                                                                |
#      | WIT | Fresh  | Gutted                       | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae"                                                                        |
#      | CAT | Fresh  | Gutted                       | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
#      | RJC | Fresh  | Whole                        | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                                                                                          |
#      | BRB | Fresh  | Whole                        | 03028590 - Fresh or chilled sea bream "Sparidae"                                                                                                                                                |
##  60    Species
#      | WHG | Fresh  | Whole                        | 03025920 - Fresh or chilled whiting "Merlangius merlangus"                                                                                                                                      |
#      | WHG | Fresh  | Gutted                       | 03025920 - Fresh or chilled whiting "Merlangius merlangus"                                                                                                                                      |
#      | DAB | Fresh  | Gutted                       | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae"                                                                        |
#      | SQC | Fresh  | Whole                        | 03074220 - Squid "Loligo spp.", live, fresh or chilled                                                                                                                                          |
#      | SMD | Fresh  | Whole                        | 03028180 - Fresh or chilled dogfish and other sharks                                                                                                                                            |
#      | JOD | Fresh  | Gutted                       | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
#      | WHE | Fresh  | Whole                        | 03079100 - Live, fresh or chilled molluscs, even in shell                                                                                                                                       |
#      | POK | Fresh  | Whole                        | 03025300 - Fresh or chilled coalfish "Pollachius virens"                                                                                                                                        |
#      | SMD | Fresh  | Gutted                       | 03028180 - Fresh or chilled dogfish and other sharks                                                                                                                                            |
#      | MUR | Fresh  | Whole                        | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
##      70 Species
#      | CRE | Fresh  | Whole                        | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled                                                                                                              |
#      | BIB | Fresh  | Gutted                       | 03025990 - Fresh or chilled fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae                                 |
#      | RJN | Fresh  | Gutted                       | 03038200 - Frozen rays and skates "Rajidae"                                                                                                                                                     |
#      | HAL | Fresh  | Whole                        | 03022130 - Fresh or chilled Atlantic halibut "Hippoglossus hippoglossus"                                                                                                                        |
#      | TUR | Fresh  | Gutted                       | 03022400 - Fresh or chilled turbot "Psetta maxima"                                                                                                                                              |
#      | LEZ | Frozen | Gutted                       | 03033985 - Frozen flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Citharidae"                                                                                  |
#      | HAD | Fresh  | Gutted                       | 03025200 - Fresh or chilled haddock "Melanogrammus aeglefinus"                                                                                                                                  |
#      | RJM | Fresh  | Whole                        | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                                                                                          |
#      | COD | Fresh  | Whole                        | 03045300 - Fresh or chilled meat, whether or not minced, of fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae |
#      | OCT | Fresh  | Whole                        | 03075100 - Octopus "Octopus spp.", live, fresh or chilled                                                                                                                                       |
#
##      80 Species
#      | LEM | Fresh  | Whole                        | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae"                                                                        |
#      | USK | Fresh  | Gutted                       | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
#      | CTL | Fresh  | Tube only                    | 03074210 - Cuttle fish "Sepia officinalis, Rossia macrosoma, Sepiola spp.", live, fresh or chilled, with or without shell                                                                       |
#      | WIT | Fresh  | Gutted and headed            | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae"                                                                        |
#      | GFB | Fresh  | Whole                        | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
#      | SCR | Fresh  | Whole                        | 03063390 - Crabs, whether in shell or not, live, fresh or chilled                                                                                                                               |
#      | SOL | Fresh  | Whole                        | 03022300 - Fresh or chilled sole "Solea spp."                                                                                                                                                   |
#      | SOS | Fresh  | Whole                        | 03022300 - Fresh or chilled sole "Solea spp."                                                                                                                                                   |
#      | PLE | Fresh  | Whole                        | 03022200 - Fresh or chilled plaice "Pleuronectes platessa"                                                                                                                                      |
#      | NEP | Fresh  | Whole                        | 03063400 - Norway lobsters "Nephrops norvegicus", whether in shell or not, live, fresh or chilled                                                                                               |
##      90 Species
#      | NEP | Fresh  | Tails only                   | 03063400 - Norway lobsters "Nephrops norvegicus", whether in shell or not, live, fresh or chilled                                                                                               |
#      | NEP | Frozen | Whole                        | 16054000 - Crustaceans, prepared or preserved                                                                                                                                                   |
#      | NEP | Frozen | Tails only                   | 03061500 - Frozen Norway lobsters "Nephrops norvegicus", even smoked, whether in shell or not, incl. lobsters in shell, cooked by steaming or by boiling in water                               |
#      | HKP | Fresh  | Whole                        | 03025419 - Fresh or chilled hake "Merluccius spp."                                                                                                                                              |
#      | CUS | Fresh  | Filleted                     | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
#      | CUS | Fresh  | Filleted and skinned         | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
##      | CUX | Frozen | Whole                        |
#      | CRE | Alive  | Whole                        | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled                                                                                                              |
#      | CRE | Boiled | Claws only                   | 16051000 - Crab, prepared or preserved                                                                                                                                                          |
#      | CRE | Fresh  | Other presentations          | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled                                                                                                              |
#      | CRE | Frozen | Whole                        | 03061430 - Frozen crabs "Cancer pagurus", even smoked, whether in shell or not, incl. crabs in shell, cooked by steaming or by boiling in water                                                 |
#      | CRE | Frozen | Other presentations          | 03061430 - Frozen crabs "Cancer pagurus", even smoked, whether in shell or not, incl. crabs in shell, cooked by steaming or by boiling in water                                                 |
##      100 Species
    And I sign out external app completely


  @perf
  Scenario:2- Verify that the Exporter can add more than 100 Species and 100 landings to the Catch certificate
    Given I logged in to the MMO application as:
    #      TST Env Test Account
#      | soleTraderUser    | soleTraderPassword |
#      | 31 98 25 22 14 16 | TestAuto12         |
      | 81 69 88 70 23 12 | TestAuto12 |
#      | 61 19 12 01 76 29 | TestAuto12         |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-100 SPECIES LANDINGS REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
    And exporter add 100 species with their state and presentation as follows:
      | MAC | Fresh  | Whole                        | 03024400 - Fresh or chilled mackerel "Scomber scombrus, Scomber australasicus, Scomber japonicus"                                                                                               |
      | MAC | Fresh  | Gutted and headed            | 03024400 - Fresh or chilled mackerel "Scomber scombrus, Scomber australasicus, Scomber japonicus"                                                                                               |
      | MAC | Fresh  | Gutted                       | 03024400 - Fresh or chilled mackerel "Scomber scombrus, Scomber australasicus, Scomber japonicus"                                                                                               |
      | MAC | Fresh  | Filleted                     | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
      | MAC | Fresh  | Filleted and skinned         | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
      | MAC | Frozen | Whole                        | 03035410 - Frozen mackerel "Scomber scombrus, Scomber japonicus"                                                                                                                                |
      | MAC | Frozen | Gutted                       | 03035410 - Frozen mackerel "Scomber scombrus, Scomber japonicus"                                                                                                                                |
      | MAC | Frozen | Filleted                     | 03048949 - Frozen fillets of mackerel "Scomber scombrus, Scomber japonicus" and fish of the species Orcynopsis unicolor                                                                         |
      | MAC | Frozen | Filleted and skinned         | 03048949 - Frozen fillets of mackerel "Scomber scombrus, Scomber japonicus" and fish of the species Orcynopsis unicolor                                                                         |
      | MAC | Frozen | Gutted and headed            | 03035410 - Frozen mackerel "Scomber scombrus, Scomber japonicus"                                                                                                                                |
# 10 species
      | LIN | Fresh  | Whole                        | 03025940 - Fresh or chilled ling "Molva spp."                                                                                                                                                   |
      | LIN | Fresh  | Filleted and skinned         | 03044490 - Fresh or chilled fillets of fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae                      |
      | LIN | Fresh  | Gutted                       | 03025940 - Fresh or chilled ling "Molva spp."                                                                                                                                                   |
      | LIN | Fresh  | Filleted                     | 03044490 - Fresh or chilled fillets of fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae                      |
      | LIN | Fresh  | Gutted and headed            | 03025940 - Fresh or chilled ling "Molva spp."                                                                                                                                                   |
      | LIN | Frozen | Whole                        | 03036980 - Frozen ling "Molva spp."                                                                                                                                                             |
      | LIN | Frozen | Gutted                       | 03036980 - Frozen ling "Molva spp."                                                                                                                                                             |
      | LIN | Frozen | Filleted                     | 03047980 - Frozen fillets of ling "Molva spp."                                                                                                                                                  |
      | LIN | Frozen | Filleted and skinned         | 03047980 - Frozen fillets of ling "Molva spp."                                                                                                                                                  |
      | LIN | Fresh  | Filleted with skin and bones | 03047980 - Frozen fillets of ling "Molva spp."                                                                                                                                                  |
# 20 species
      | MEG | Fresh  | Whole                        | 03022910 - Fresh or chilled megrim "Lepidorhombus spp."                                                                                                                                         |
      | SOS | Fresh  | Gutted                       | 03022300 - Fresh or chilled sole "Solea spp."                                                                                                                                                   |
      | MEG | Fresh  | Headed, head off             | 03022910 - Fresh or chilled megrim "Lepidorhombus spp."                                                                                                                                         |
      | MEG | Frozen | Whole                        | 03033985 - Frozen flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Citharidae"                                                                                  |
      | MEG | Frozen | Filleted                     | 03048350 - Frozen fillets of megrim "Lepidorhombus spp."                                                                                                                                        |
      | BLI | Fresh  | Whole                        | 03025940 - Fresh or chilled ling "Molva spp."                                                                                                                                                   |
      | MUL | Fresh  | Filleted and skinned         | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
      | MUL | Fresh  | Gutted                       | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
      | RJO | Fresh  | Gutted                       | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                                                                                          |
      | SAO | Frozen | Gutted, headed and tailed    | 03036990 - Frozen fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae                                           |
# 30 species
      | MON | Fresh  | Whole                        | 03028950 - Fresh or chilled monkfish "Lophius spp."                                                                                                                                             |
      | MON | Fresh  | Gutted                       | 03028950 - Fresh or chilled monkfish "Lophius spp."                                                                                                                                             |
      | MON | Fresh  | Filleted and skinned         | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
      | MON | Fresh  | Filleted                     | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
      | MON | Fresh  | Gutted and headed            | 03028950 - Fresh or chilled monkfish "Lophius spp."                                                                                                                                             |
      | MON | Fresh  | Headed, head off             | 03028950 - Fresh or chilled monkfish "Lophius spp."                                                                                                                                             |
      | MON | Frozen | Whole                        | 03038965 - Frozen monkfish "Lophius spp."                                                                                                                                                       |
      | MON | Frozen | Gutted                       | 03038965 - Frozen monkfish "Lophius spp."                                                                                                                                                       |
      | MON | Frozen | Gutted and headed            | 03038965 - Frozen monkfish "Lophius spp."                                                                                                                                                       |
      | MON | Frozen | Filleted                     | 03048960 - Frozen fillets of monkfish "Lophius spp."                                                                                                                                            |
# 40 species
      | POL | Fresh  | Whole                        | 03025930 - Fresh or chilled pollack "Pollachius pollachius"                                                                                                                                     |
      | POL | Fresh  | Headed, head off             | 03025930 - Fresh or chilled pollack "Pollachius pollachius"                                                                                                                                     |
      | POL | Fresh  | Gutted                       | 03025930 - Fresh or chilled pollack "Pollachius pollachius"                                                                                                                                     |
      | POL | Fresh  | Filleted                     | 03044490 - Fresh or chilled fillets of fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae                      |
      | POL | Fresh  | Gutted and headed            | 03025930 - Fresh or chilled pollack "Pollachius pollachius"                                                                                                                                     |
      | BOC | Fresh  | Whole                        | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
      | POL | Frozen | Gutted                       | 03036950 - Frozen pollack "Pollachius pollachius"                                                                                                                                               |
      | BSH | Fresh  | Whole                        | 03028140 - Fresh or chilled blue shark "Prionace glauca"                                                                                                                                        |
      | POL | Frozen | Filleted and skinned         | 03047990 - Frozen fillets of fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae                                |
      | POL | Salted | Salted and gutted            | 03053990 - Fillets of fish, dried, salted or in brine, but not smoked                                                                                                                           |
# 50 species
      | BLL | Fresh  | Whole                        | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae"                                                                        |
      | CTL | Fresh  | Whole                        | 03074210 - Cuttle fish "Sepia officinalis, Rossia macrosoma, Sepiola spp.", live, fresh or chilled, with or without shell                                                                       |
      | RJI | Fresh  | Gutted                       | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                                                                                          |
      | MON | Fresh  | Filleted with skin and bones | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
      | SKA | Fresh  | Other presentations          | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                                                                                          |
      | SYC | Fresh  | Whole                        | 03028115 - Fresh or chilled picked dogfish "Squalus acanthias" and catsharks "Scyliorhinus spp."                                                                                                |
      | WIT | Fresh  | Gutted                       | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae"                                                                        |
      | CAT | Fresh  | Gutted                       | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
      | RJC | Fresh  | Whole                        | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                                                                                          |
      | BRB | Fresh  | Whole                        | 03028590 - Fresh or chilled sea bream "Sparidae"                                                                                                                                                |
#  60    Species
      | WHG | Fresh  | Whole                        | 03025920 - Fresh or chilled whiting "Merlangius merlangus"                                                                                                                                      |
      | WHG | Fresh  | Gutted                       | 03025920 - Fresh or chilled whiting "Merlangius merlangus"                                                                                                                                      |
      | DAB | Fresh  | Gutted                       | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae"                                                                        |
      | SQC | Fresh  | Whole                        | 03074220 - Squid "Loligo spp.", live, fresh or chilled                                                                                                                                          |
      | SMD | Fresh  | Whole                        | 03028180 - Fresh or chilled dogfish and other sharks                                                                                                                                            |
      | JOD | Fresh  | Gutted                       | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
      | WHE | Fresh  | Whole                        | 03079100 - Live, fresh or chilled molluscs, even in shell                                                                                                                                       |
      | POK | Fresh  | Whole                        | 03025300 - Fresh or chilled coalfish "Pollachius virens"                                                                                                                                        |
      | SMD | Fresh  | Gutted                       | 03028180 - Fresh or chilled dogfish and other sharks                                                                                                                                            |
      | MUR | Fresh  | Whole                        | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
#      70 Species
      | CRE | Fresh  | Whole                        | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled                                                                                                              |
      | BIB | Fresh  | Gutted                       | 03025990 - Fresh or chilled fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae                                 |
      | RJN | Fresh  | Gutted                       | 03038200 - Frozen rays and skates "Rajidae"                                                                                                                                                     |
      | HAL | Fresh  | Whole                        | 03022130 - Fresh or chilled Atlantic halibut "Hippoglossus hippoglossus"                                                                                                                        |
      | TUR | Fresh  | Gutted                       | 03022400 - Fresh or chilled turbot "Psetta maxima"                                                                                                                                              |
      | LEZ | Frozen | Gutted                       | 03033985 - Frozen flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Citharidae"                                                                                  |
      | HAD | Fresh  | Gutted                       | 03025200 - Fresh or chilled haddock "Melanogrammus aeglefinus"                                                                                                                                  |
      | RJM | Fresh  | Whole                        | 03028200 - Fresh or chilled, rays and skates "Rajidae"                                                                                                                                          |
      | COD | Fresh  | Whole                        | 03045300 - Fresh or chilled meat, whether or not minced, of fish of the families Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae and Muraenolepididae |
      | OCT | Fresh  | Whole                        | 03075100 - Octopus "Octopus spp.", live, fresh or chilled                                                                                                                                       |

#      80 Species
      | LEM | Fresh  | Whole                        | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae"                                                                        |
      | USK | Fresh  | Gutted                       | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
      | CTL | Fresh  | Tube only                    | 03074210 - Cuttle fish "Sepia officinalis, Rossia macrosoma, Sepiola spp.", live, fresh or chilled, with or without shell                                                                       |
      | WIT | Fresh  | Gutted and headed            | 03022980 - Fresh or chilled flat fish "Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae and Catharidae"                                                                        |
      | GFB | Fresh  | Whole                        | 03028990 - Fresh or chilled fish, n.e.s.                                                                                                                                                        |
      | SCR | Fresh  | Whole                        | 03063390 - Crabs, whether in shell or not, live, fresh or chilled                                                                                                                               |
      | SOL | Fresh  | Whole                        | 03022300 - Fresh or chilled sole "Solea spp."                                                                                                                                                   |
      | SOS | Fresh  | Whole                        | 03022300 - Fresh or chilled sole "Solea spp."                                                                                                                                                   |
      | PLE | Fresh  | Whole                        | 03022200 - Fresh or chilled plaice "Pleuronectes platessa"                                                                                                                                      |
      | NEP | Fresh  | Whole                        | 03063400 - Norway lobsters "Nephrops norvegicus", whether in shell or not, live, fresh or chilled                                                                                               |
#      90 Species
      | NEP | Fresh  | Tails only                   | 03063400 - Norway lobsters "Nephrops norvegicus", whether in shell or not, live, fresh or chilled                                                                                               |
      | NEP | Frozen | Whole                        | 16054000 - Crustaceans, prepared or preserved                                                                                                                                                   |
      | NEP | Frozen | Tails only                   | 03061500 - Frozen Norway lobsters "Nephrops norvegicus", even smoked, whether in shell or not, incl. lobsters in shell, cooked by steaming or by boiling in water                               |
      | HKP | Fresh  | Whole                        | 03025419 - Fresh or chilled hake "Merluccius spp."                                                                                                                                              |
      | CUS | Fresh  | Filleted                     | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
      | CUS | Fresh  | Filleted and skinned         | 03044990 - Fresh or chilled fillets of fish, n.e.s.                                                                                                                                             |
#      | CUX | Frozen | Whole                        |
      | CRE | Alive  | Whole                        | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled                                                                                                              |
      | CRE | Boiled | Claws only                   | 16051000 - Crab, prepared or preserved                                                                                                                                                          |
      | CRE | Fresh  | Other presentations          | 03063310 - Crabs "Cancer pagurus", whether in shell or not, live, fresh or chilled                                                                                                              |
      | CRE | Frozen | Whole                        | 03061430 - Frozen crabs "Cancer pagurus", even smoked, whether in shell or not, incl. crabs in shell, cooked by steaming or by boiling in water                                                 |
#      | CRE | Frozen | Other presentations          | 03061430 - Frozen crabs "Cancer pagurus", even smoked, whether in shell or not, incl. crabs in shell, cooked by steaming or by boiling in water                                                 |
#      100 Species
    And add exporter 100 landing details as follows:
      | 04/07/2019 | BCK595             | Atlantic mackerel (MAC), Fresh, Whole, 03024400                      | 1 |
      | 04/07/2019 | CN354              | Atlantic mackerel (MAC), Fresh, Gutted and headed, 03024400          | 1 |
      | 04/07/2019 | BF206              | Atlantic mackerel (MAC), Fresh, Gutted, 03024400                     | 1 |
      | 08/07/2019 | BCK17              | Atlantic mackerel (MAC), Fresh, Filleted, 03044990                   | 1 |
      | 05/07/2019 | SM688              | Atlantic mackerel (MAC), Fresh, Filleted and skinned, 03044990       | 1 |
      | 09/07/2019 | FR54               | Atlantic mackerel (MAC), Frozen, Whole, 03035410                     | 1 |
      | 09/07/2019 | BF206              | Atlantic mackerel (MAC), Frozen, Gutted, 03035410                    | 1 |
      | 12/07/2019 | H332               | Atlantic mackerel (MAC), Frozen, Filleted, 03048949                  | 1 |
      | 12/07/2019 | H216               | Atlantic mackerel (MAC), Frozen, Filleted and skinned, 03048949      | 1 |
      | 10/07/2019 | SM688              | Atlantic mackerel (MAC), Frozen, Gutted and headed, 03035410         | 1 |
# 10 Landings
      | 11/07/2019 | AR865              | Ling (LIN), Fresh, Whole, 03025940                                   | 1 |
      | 17/07/2019 | FR59               | Ling (LIN), Fresh, Filleted and skinned, 03044490                    | 1 |
      | 20/07/2019 | FD522              | Ling (LIN), Fresh, Gutted, 03025940                                  | 1 |
      | 15/07/2019 | BF326              | Ling (LIN), Fresh, Filleted, 03044490                                | 1 |
      | 16/07/2019 | INS237             | Ling (LIN), Fresh, Gutted and headed, 03025940                       | 1 |
      | 11/07/2019 | VENTUROUS          | Ling (LIN), Frozen, Whole, 03036980                                  | 1 |
      | 17/07/2019 | PD400              | Ling (LIN), Frozen, Gutted, 03036980                                 | 1 |
      | 11/07/2019 | COURAGEOUS         | Ling (LIN), Frozen, Filleted, 03047980                               | 1 |
      | 17/07/2019 | PW177              | Ling (LIN), Frozen, Filleted and skinned, 03047980                   | 1 |
      | 04/07/2019 | WK170              | Ling (LIN), Fresh, Filleted with skin and bones, 03044490            | 1 |
# 20 Landings
      | 04/07/2019 | FY848              | Megrim (MEG), Fresh, Whole, 03022910                                 | 1 |
      | 04/07/2019 | E444               | Sand sole (SOS), Fresh, Gutted, 03022300                             | 1 |
      | 04/07/2019 | FY221              | Megrim (MEG), Fresh, Headed, head off, 03022910                      | 1 |
      | 10/07/2019 | BM271              | Megrim (MEG), Frozen, Whole, 03033985                                | 1 |
      | 04/07/2019 | OB360              | Megrim (MEG), Frozen, Filleted, 03048350                             | 1 |
      | 18/07/2019 | BF803              | Blue ling (BLI), Fresh, Whole, 03025940                              | 1 |
      | 04/07/2019 | E444               | Mullets nei (MUL), Fresh, Filleted and skinned, 03044990             | 1 |
      | 07/07/2019 | VICTORY OF HELFORD | Mullets nei (MUL), Fresh, Gutted, 03028990                           | 1 |
      | 14/07/2019 | M1170              | Longnosed skate (RJO), Fresh, Gutted, 03028200                       | 1 |
      | 08/08/2019 | M1033              | Tadpole codling (SAO), Frozen, Gutted, headed and tailed, 03036990   | 1 |
# 30 Landings
      | 07/07/2019 | PW45               | Angler(=Monk) (MON), Fresh, Whole, 03028950                          | 1 |
      | 05/07/2019 | FD283              | Angler(=Monk) (MON), Fresh, Gutted, 03028950                         | 1 |
      | 04/07/2019 | LK173              | Angler(=Monk) (MON), Fresh, Filleted and skinned, 03044990           | 1 |
      | 11/07/2019 | H225               | Angler(=Monk) (MON), Fresh, Filleted, 03044990                       | 1 |
      | 11/07/2019 | SH90               | Angler(=Monk) (MON), Fresh, Gutted and headed, 03028950              | 1 |
      | 14/07/2019 | VICTORY ROSE       | Angler(=Monk) (MON), Fresh, Headed, head off, 03028950               | 1 |
      | 11/07/2019 | BH227              | Angler(=Monk) (MON), Frozen, Whole, 03038965                         | 1 |
      | 15/07/2019 | ETERNAL FRIEND     | Angler(=Monk) (MON), Frozen, Gutted, 03038965                        | 1 |
      | 14/07/2019 | NORTHERN QUEST     | Angler(=Monk) (MON), Frozen, Gutted and headed, 03038965             | 1 |
      | 04/07/2019 | BM484              | Angler(=Monk) (MON), Frozen, Filleted, 03048960                      | 1 |
# 40 Landings
      | 11/07/2019 | INS29              | Pollack (POL), Fresh, Whole, 03025930                                | 1 |
      | 06/07/2019 | N292               | Pollack (POL), Fresh, Headed, head off, 03025930                     | 1 |
      | 02/07/2019 | PZ15               | Pollack (POL), Fresh, Gutted, 03025930                               | 1 |
      | 11/07/2019 | H347               | Pollack (POL), Fresh, Filleted, 03044490                             | 1 |
      | 11/07/2019 | INS353             | Pollack (POL), Fresh, Gutted and headed, 03025930                    | 1 |
      | 14/07/2019 | INS110             | Boarfish (BOC), Fresh, Whole, 03028990                               | 1 |
      | 07/07/2019 | BF803              | Pollack (POL), Frozen, Gutted, 03036950                              | 1 |
      | 09/07/2019 | BF83               | Blue shark (BSH), Fresh, Whole, 03028140                             | 1 |
      | 13/07/2019 | FD527              | Pollack (POL), Frozen, Filleted and skinned, 03047990                | 1 |
      | 13/07/2019 | BF440              | Pollack (POL), Salted, Salted and gutted, 03053990                   | 1 |
# 50 Landings
      | 10/07/2019 | WILLIAM OF LADRAM  | Brill (BLL), Fresh, Whole, 03022980                                  | 1 |
      | 08/07/2019 | PZ199              | Cuttlefish, bobtail squids nei (CTL), Fresh, Whole, 03074210         | 1 |
      | 11/07/2019 | LK57               | Sandy ray (RJI), Fresh, Gutted, 03028200                             | 1 |
      | 11/07/2019 | SH90               | Angler(=Monk) (MON), Fresh, Filleted with skin and bones, 03044990   | 1 |
      | 08/07/2019 | BM55               | Raja rays nei (SKA), Fresh, Other presentations, 03028200            | 1 |
      | 01/07/2019 | BM271              | Small-spotted catshark (SYC), Fresh, Whole, 03028115                 | 1 |
      | 06/07/2019 | PD43               | Witch flounder (WIT), Fresh, Gutted, 03022980                        | 1 |
      | 06/07/2019 | E104               | Wolffishes(=Catfishes) nei (CAT), Fresh, Gutted, 03028990            | 1 |
      | 11/07/2019 | PZ498              | Thornback ray (RJC), Fresh, Whole, 03028200                          | 1 |
      | 07/07/2019 | BM361              | Black seabream (BRB), Fresh, Whole, 03028590                         | 1 |
# 60 Landings
      | 01/07/2019 | BM271              | Whiting (WHG), Fresh, Whole, 03025920                                | 1 |
      | 04/07/2019 | CN354              | Whiting (WHG), Fresh, Gutted, 03025920                               | 1 |
      | 04/07/2019 | BF206              | Common dab (DAB), Fresh, Gutted, 03022980                            | 1 |
      | 05/07/2019 | CN354              | Common squids nei (SQC), Fresh, Whole, 03074220                      | 1 |
      | 05/07/2019 | SM688              | Smooth-hound (SMD), Fresh, Whole, 03028180                           | 1 |
      | 06/07/2019 | PZ193              | John dory (JOD), Fresh, Gutted, 03028990                             | 1 |
      | 02/07/2019 | LN474              | Whelk (WHE), Fresh, Whole, 03079100                                  | 1 |
      | 11/07/2019 | H347               | Saithe(=Pollock) (POK), Fresh, Whole, 03025300                       | 1 |
      | 03/07/2019 | NN444              | Smooth-hound (SMD), Fresh, Gutted, 03028180                          | 1 |
      | 04/07/2019 | E444               | Surmullet (MUR), Fresh, Whole, 03028990                              | 1 |

# 70 Landings
      | 04/07/2019 | GY388              | Edible crab (brown crab) (CRE), Fresh, Whole, 03063310               | 1 |
      | 04/07/2019 | LT1048             | Pouting(=Bib) (BIB), Fresh, Gutted, 03025990                         | 1 |
      | 04/07/2019 | UL44               | Cuckoo ray (RJN), Fresh, Gutted, 03028200                            | 1 |
      | 01/07/2019 | SN36               | Atlantic halibut (HAL), Fresh, Whole, 03022130                       | 1 |
      | 05/07/2019 | P224               | Turbot (TUR), Fresh, Gutted, 03022400                                | 1 |
      | 11/07/2019 | INS172             | Megrims nei (LEZ), Frozen, Gutted, 03033985                          | 1 |
      | 02/07/2019 | BH227              | Haddock (HAD), Fresh, Gutted, 03025200                               | 1 |
      | 10/07/2019 | LK985              | Spotted ray (RJM), Fresh, Whole, 03028200                            | 1 |
      | 08/03/2020 | BF803              | Atlantic cod (COD), Fresh, Whole, 03025110                           | 1 |
      | 11/07/2019 | BF85               | Octopuses, etc. nei (OCT), Fresh, Whole, 03075100                    | 1 |
# 80 Landings
      | 10/03/2020 | LK419              | Lemon sole (LEM), Fresh, Whole, 03022980                             | 1 |
      | 24/01/2020 | BD217              | Tusk(=Cusk) (USK), Fresh, Gutted, 03028990                           | 1 |
      | 04/03/2020 | E444               | Cuttlefish, bobtail squids nei (CTL), Fresh, Tube only, 03074210     | 1 |
      | 08/07/2019 | B29                | Witch flounder (WIT), Fresh, Gutted and headed, 03022980             | 1 |
      | 15/07/2019 | FD528              | Greater forkbeard (GFB), Fresh, Whole, 03028990                      | 1 |
      | 07/07/2019 | AB7                | Spinous spider crab (SCR), Fresh, Whole, 03063390                    | 1 |
      | 01/07/2019 | E68                | Common sole (SOL), Fresh, Whole, 03022300                            | 1 |
      | 07/07/2019 | SU516              | Sand sole (SOS), Fresh, Whole, 03022300                              | 1 |
      | 13/07/2019 | FR246              | European plaice (PLE), Fresh, Whole, 03022200                        | 1 |
      | 03/03/2020 | N315               | Norway lobster (NEP), Fresh, Whole, 03063400                         | 1 |
# 90 Landings
      | 11/07/2019 | INS172             | Norway lobster (NEP), Fresh, Tails only, 03063400                    | 1 |
      | 07/07/2019 | B350               | Norway lobster (NEP), Frozen, Whole, 16054000                        | 1 |
      | 16/07/2019 | PD96               | Norway lobster (NEP), Frozen, Tails only, 03061500                   | 1 |
      | 08/08/2019 | M1033              | Argentine hake (HKP), Fresh, Whole, 03025419                         | 1 |
      | 08/08/2019 | M1033              | Pink cusk-eel (CUS), Fresh, Filleted, 03044990                       | 1 |
      | 13/07/2019 | FD525              | Pink cusk-eel (CUS), Fresh, Filleted and skinned, 03044990           | 1 |
      | 09/07/2019 | TO50               | Edible crab (brown crab) (CRE), Alive, Whole, 03063310               | 1 |
      | 09/07/2019 | TO40               | Edible crab (brown crab) (CRE), Boiled, Claws only, 16051000         | 1 |
      | 08/07/2019 | DH149              | Edible crab (brown crab) (CRE), Fresh, Other presentations, 03063310 | 1 |
      | 01/03/2020 | BRD123             | Edible crab (brown crab) (CRE), Frozen, Whole, 03061430              | 1 |
#      | 08/07/2019 | LN486              | 10 |
# 100 Landings
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
#    And I enter a Transport type as: "Truck"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
    When The User submits the document
    And I validate the document number from Confirmation page
    And I sign out external app completely


  @perf
  Scenario:3 - Verify that the Exporter can add 12 landings with elogs data to the Catch certificate
    Given I logged in to the MMO application as:
#      | soleTraderUser    | soleTraderPassword |
      | 75 58 66 54 14 92 | TestAuto12 |
    And ECC user create "Create a UK catch certificate" certificate
    When I select "Manual entry" landings entry and "Continue" the journey
    When I click on "Your reference (Optional)" link from Progress page
    And Add Reference "CC-11 SPECIES AND 11 Elogs LANDINGS REFERENCE" to the catch certificate
    And Continue my "Create a UK catch certificate" with "default" addresses
      | Automation Testing | Automation City | SA6 8PP | United Kingdom |
#    When I select "Manual entry" landings entry and "Continue" the journey
    And exporter add 12 species with their state and presentation as follows:
      | NEP | Fresh | Whole | 03063400 - Norway lobsters                    |
      | ANF | Fresh | Whole | 03028950 - Fresh or chilled monkfish          |
      | COD | Fresh | Whole | 03025110 - Fresh or chilled cod               |
      | CRE | Fresh | Whole | 03063310 - Crabs "Cancer pagurus"             |
      | CTC | Fresh | Whole | 03074210 - Cuttle fish "Sepia officinalis     |
      | HAD | Fresh | Whole | 03025200 - Fresh or chilled haddock           |
      | LIN | Fresh | Whole | 03025940 - Fresh or chilled ling "Molva spp." |
      | MON | Fresh | Whole | 03028950 - Fresh or chilled monkfish          |
      | LEM | Fresh | Whole | 03022980 - Fresh or chilled flat fish         |
      | MAC | Fresh | Whole | 03024400 - Fresh or chilled mackerel          |
      | POK | Fresh | Whole | 03025300 - Fresh or chilled coalfish          |
      | JOD | Fresh | Whole | 03028990 - Fresh or chilled fish, n.e.s.      |
    And add exporter 12 landing details as follows:
      | 10/03/2020 | LK70        | Norway lobster (NEP), Fresh, Whole, 03063400           | 10 |
      | 10/03/2020 | BF515       | Anglerfishes nei (ANF), Fresh, Whole, 03028950         | 10 |
      | 11/03/2020 | PD98        | Atlantic cod (COD), Fresh, Whole, 03025110             | 10 |
      | 06/03/2020 | BR116       | Edible crab (brown crab) (CRE), Fresh, Whole, 03063310 | 10 |
      | 08/03/2020 | BM110       | Common cuttlefish (CTC), Fresh, Whole, 03074210        | 10 |
      | 08/03/2020 | BF803       | Haddock (HAD), Fresh, Whole, 03025200                  | 10 |
      | 11/03/2020 | K193        | Ling (LIN), Fresh, Whole, 03025940                     | 10 |
      | 10/03/2020 | FR285       | (MON), Fresh, Whole, 03028950                          | 10 |
      | 03/03/2020 | E444        | Lemon sole (LEM), Fresh, Whole, 03022980               | 10 |
      | 11/03/2020 | E104        | Atlantic mackerel (MAC), Fresh, Whole, 03024400        | 10 |
      | 08/03/2020 | BF190       | (POK), Fresh, Whole, 03025300                          | 10 |
      | 11/03/2020 | Russa Taign | John dory (JOD), Fresh, Whole, 03028990                | 10 |
    And fish or shellfish was caught in the "UK, British Isles" water and export from "United Kingdom" to "France"
#    And I enter a Transport type as: "Truck"
    And I enter a Catch Transport type: "Truck"
      | NAT | REG | DEST |
#    When I submit the document
    When The User submits the document
    Then I validate Catch certificate Offline Confirmation page
    When I click on Return to dashboard link
    Then I should see the document status as "PENDING" on the CC Dashboard page
    And I should see the offline document status as "PENDING" on the CC Dashboard page
    And Exporter void the certificate created from dashboard page
    And I sign out external app completely

