#@Reg
Feature: Creating scenarios for Conversion factors for Catch Certificates
  As an Exporter,
  I am validate the conversion factors for various Species, its State & Presentations.


#  Scenario:1 - With the same species like FRE and same State & Presentation FRE FIL and same landing date with vessel BCK77
#  This scenario is covered in CatchCertificateFlow scenario 1 - Create a simple Catch Certificate

#  Scenario:2 -  With the same species like FRE and same State & Presentation FRE FIL and different landing date with vessel BCK77
#  This scenario is covered in Catch certificate Flow  scenario 3 - Adding multiple landings

#  Scenario:3 - With the same species like FRE and same State & Presentation FRE FIL and same landing date with different vessel BCK21 instance of BCK77
#  This scenario is covered as part of CatchCertificateFlow scenario 2 - Adding multiple species

#  Scenario:4 - With different species with same State & Presentation FRE FIL and same landing date with vessel BCK77
#  This scenario is covered as part of CatchCertAddReference scenario 1 - User can add their own catch certificate creation reference

#  Scenario:5 - If species factor, not available check with default factor 1 - BSH	Blue shark - FRE	FIN
#  This scenario is covered as part of CatchCertificateFlow Scenario:4 - Adding multiple species, then cancelling the first

#  Scenario:6 - Alive & whole factor 1
#  This scenario is covered as part of CatchCertificateFlow scenario 2 - Adding multiple species (With Species HER)

#  Scenario:7 - CF for under 10 meter vessel  Vessel - Jocalinda (RX1)  -- Manual Test
#  This scenario is covered as part of CatchCertCreateTenDrafts.feature scenario 1 - Create Catch Cert from multiple draft - Continue with existing save draft

#  ELOGS scenarios are to be tested manually
  @Manual
  Scenario:8 - We also need to test when there is no landing deck, but just the elog is available
  Given that a user has created CC with valid landings data
  When we verify the payload generated CM
  Then we should see the CaseType messages with proper valid data details
  @Manual
  Scenario:9 - Test with landing deck and elog (Cover this scenario as part of 50 landings scenario)
  Given that a user has created CC with valid landings data
  When we verify the payload generated CM
  Then we should see the CaseType messages with proper valid data details
  @Manual
  Scenario:10 - Check that the tolerance factor of 10% is added when there is only elog data available
  Given that a user has created CC with valid landings data
  When we verify the payload generated CM
  Then we should see the CaseType messages with proper valid data details
  @Manual
  Scenario:11 - Landing dec super-seeding an ELOG
  Given that a user has created CC with valid landings data
  When we verify the payload generated CM
  Then we should see the CaseType messages with proper valid data details



#  Manual tests to implement
  @manual
  Scenario:12 - 14 day limit
    Given that a user has created CC with no landings
    When we before reaching 14days without a landing
    Then we should send a flag to CM saying that the 14day limit is 'False'
    And we should continue searching for landings

  @manual
  Scenario:13 - Should send a flag to CM when 14day limit is reached
    Given that a user has created CC with no landings
    When we reach 14days without a landing
    Then we should send a flag to CM saying that the 14day limit is 'True'
    And we should stop searching for landings


  @manual
  Scenario:14 - Create a CC with valid data and verify the payload generated in CM
    Given that a user has created CC with valid landings data
    When we verify the payload generated CM
    Then we should see the CaseType messages with proper valid data details

#
#   This scenario is Automated Test --
  @manual
  Scenario:15 - Should be able to view and click the guidance link within the Dynamic error message
#    Implemented as part of Scenario 2 under catchCertVoid.feature feature file.
    Given a catch certificate has failed validation
    When error message is displayed
    And i click on the guidance link within the error message
    Then i should be redirected to a link within gov.uk with guidance on what to do next.


#  FI0-1885 & FI0-1883
  @manual
  Scenario:16 - Validate the new Risking variables are ued in CC creation.
    Given that I have changed the risk variable
      | exporter_score * exporter_weighting | * | species_score * species_weighting | * | vessel_score * vessel_weighting |
    And I have set the Risk threshold
    When I create the CC
    Then the new risking variables and the threshold should be used to validate the successful creation of the CC

#  FI0-540,   FI0-2623,   FI0-2624 ,  FI0-2625, FI0-2641
#  Below scenario case is implemented in Internal app view documents Scenario 1:
  @manual
  Scenario:17 - Create a CC document with a valid Species & Vessel details and edit that document in Internal app with non-existing Species & Vessel and submit that document on External app.
    Given that I have created a simple CC with non existing vessels up to Summary page
    And change the vessels from internal admin app
    When I create the CC from external app
    Then verify the data on the document created.
    And also verify the data in the reports & in the CM



#  Weight failure message F10-1946
#   Add scenarios for isLeagallyDue case from F10-1701 & F10-1703
#   Add scenarios for Created case from FI0-1980  -- it is covered as part of Simple CC, PS & SD documents creation
#   Add Scenarios for Conversion factors (those are manual)create certificates --Check with Dinesh for scenarios (elogs tolerance of 10% for conversion factor)
#   Add Scenarios for Compliance factors - F10-1944, F10-1805 & 2099  -  validate risk base message on Summary page
#   Add scenarios for the weight tolerance is <=50kg. from Elog data it should allow this, if it is >= 50kg it should not allow.
#   Tolerance doesn't apply for <10 meter vessels on Landing declaration.
#   Risking
#   validate risk base message on Summary page -- F10-1944, F10-1805
#    F10-1758  -- new Home option
#    F10-2736  -- Small functionality enhancements on CC/PS/SD application journeys (below stories are covering this functionality)
#    F10-2729  -- CC: Allow 2 decimal places in all weight fields  -- Already implemented as part of CC scenarios
#    F10-2732  -- PS: Allow 2 decimal places in all weight fields  -- Already implemented as part of PS scenarios
#    F10-2732  -- SD: Allow 2 decimal places in all weight fields  -- Already implemented as part of SD scenarios
#  FI0-2802



