#Feature: Switching landing entry options when javascript is disabled
#  As an Exporter,
#  I want to be able to select the landing entry option that i like while creating a CC when JS is disabled
#  So that i can create a CC document with my preferred landing entry option
#
#  @FI0-4967:
#Scenario 1: Validating non-existing page in CC journey
#Given I am on the CC application journey
#And I do not have JavaScript enabled
#When I changed CC journey URL (Eg:/create-catch-certificate/catch-certificates/mahesh)
#And I can refresh the page
#Then the “Page not found" page will be displayed.
#
#
#Scenario 2: Validate Hyperlink in ‘Page not found’ page
#Given I have navigated to the ‘Page not found’ page
#And I do not have JavaScript enabled
#When I click on Check the document in progress link
#Then the page navigated to ‘What do you want to do’ page
#
#Scenario 3: Validate Welsh translation in “page not found” page
#Given I have navigated to ‘Page not found’ page
#And I do not have JavaScript enabled
#When I have changed the language to Welsh
#Then the “page not found” page will be translated into Welsh.
#
#
#@FI0-4971:
#Scenario 1: validate the switching of the landing entry option direct landing -> manual entry/data upload or vice versa (Continue button - Selecting yes)
#Given I am on the "Are you sure you want to change landings type" page
#And I don’t have JavaScript enabled
#And I have selected ‘Yes, I want to change my landings type
#When I have clicked on ‘Continue’
#Then I should be redirected to progress page
#And I should see (Data upload if selected) and corresponding transport details
#And It should update landing details accordingly
#
#
#Scenario 2: validate the switching of the landing entry option direct landing -> manual entry/data upload or vice versa (Continue button - Selecting No)
#Given I am on the "Are you sure you want to change landings type" page
#And I don’t have JavaScript enabled
#And I have selected ‘No, I want to keep my current landings type’
#When I  clicked on ‘Continue’
#Then I should be redirected to landings entry page
#And My previously selected landings option should retained
#And my landings will not be affected
#
#
#Scenario 3: Continue button - unhappy path/errors displayed
#Given I am on the ‘Are you sure you want to change landings type’ page
#And I don’t have JavaScript enabled
#And I haven’t made any selection
#When I clicked on ‘Continue’
#Then I should be on the same page
#And Error will be displayed on the page in English(Select an option to continue)
#
#
#Scenario 4: Cancel button
#Given I am on the ‘Are you sure you want to change landings type’ page
#And I don’t have JavaScript enabled
#When I click ‘Cancel’
#Then I should be redirected to landings entry page
#And My previously selected landings option should retained
#And my landings will not be affected
#
#Scenario 5: Welsh translation of errors
#Given I am on the ‘Are you sure you want to change landings type’ page
#And I don’t have JavaScript enabled
#And I haven’t made any selection
#When I clicked on ‘Continue’
#Then I should be on the same page
#And Error will be displayed on the page in welsh(Dewiswch opsiwn i fwrw ymlaen)
#
#
