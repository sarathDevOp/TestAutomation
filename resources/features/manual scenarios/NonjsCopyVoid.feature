#Feature: CC copying and Voiding CC certificate for nonjs browser
# As an exporter,
# I want to be able to copy or void a cc application when javascript is not enabled
# So that I can create a new certificate.
#
# @FI0-4864  CC Create 'void-this-catch-certificate' page for users with no Javascript enabled browser
#Scenario: 1 Validate the void-this-catch-certificate page UI content for non-JS
#Given I have navigated to the void-this-catch-certificate page of my CC application
#And I do not have javascript enabled
#Then the page will be displayed in the proper format
#
#Scenario: 2 Validate the Option Selection on the void-this-catch-certificate page
#Given I have navigated the void-this-catch-certificate page of my CC application
#And I do not have javascript enabled
#When the page is rendered
#Then the Yes and No radio button option set is editable
#
#Scenario: 3 Validate the Hyperlinks on the void-this-catch-certificate page
#Given I have navigated the void-this-catch-certificate page of my CC application
#And I do not have javascript enabled
#When the page is rendered
#Then the back – Navigation hyperlinks will be active
#And the user should be able to Navigates back to the previous page of the journey
#
#Scenario: 4 Validate the UI for the Welsh translation
#Given I am on the void-this-catch-certificate page of my CC application
#And I do not have javascript enabled
#When I select Welsh translation
#Then the page UI will be translated into Welsh
#
#Scenario: 5 Validate page title for English and Welsh language
#Given I am on the void-this-catch-certificate page of my CC application
#And I do not have javascript enabled
#When I select Welsh/English translation
#Then page should be appropriate to the selected language
#
#@FI0-4866
#Scenario: 1 Save and Continue button - When Yes is selected
#Given I am on the ‘void-this-catch-certificate’ page
#And I don’t have javascript enabled
#And I have selected ‘Yes’
#When I click on ‘Save and Continue’
#Then the catch certificate will be set to void
#And I will be navigated to the catch-certificate dashboard
#
#Scenario: 2 Save and Continue button - When No is selected
#Given I am on the ‘void-this-catch-certificate’ page
#And I don’t have javascript enabled
#And I have selected ‘No’
#When I click on ‘Save and Continue’
#Then the catch certificate will NOT be set to void
#And I will be navigated to the catch-certificate dashboard
#
#Scenario: 3 Error scenario when no selection made and user clicks ‘Save and Continue’
#Given I am on the ‘void-this-catch-certificate’ page
#And I don’t have javascript enabled
#And I have not selected either ‘Yes’ or ‘No’
#When I click on ‘Save and Continue’
#Then I will get the error like "Select yes if you want to void the current document"
#And I will remain on the ‘void-this-catch-certificate’ page
#
#Scenario: 4 Welsh translation of errors
#Given I am on the ‘void-this-catch-certificate’ page
#And I don’t have javascript enabled
#And I have selected Welsh translation
#And I have not selected either ‘Yes’ or ‘No’
#When I click on ‘Save and Continue’
#Then error will be displayed on the page in Welsh
#And Error content is"Dewiswch ‘Iawn’ os ydych chi am ddirymu’r ddogfen gyfredol"
#And I will remain on the ‘void-this-catch-certificate’ page
#
#
#@FI0-4909
#Scenario: 1 Verify the page 'copy-this-catch-certificate' is displayed when javascript is not enabled
#Given I am on CC dashboard page
#And I don’t have JavaScript enable
#When I click on the copy button on the Completed document
#Then user navigates to the /copy-this-catch-certificate page
#
#Scenario: 2 Validate on the Copy all certificate data radio button
#Given I am on CC dashboard page
#And I don’t have JavaScript enable
#When I click on the copy button on the Completed document
#And user navigates to the /copy-this-catch-certificate page
#And user select Copy all certificate data radio button
#And select on the Acknowledge
#Then click on the save and continue
#And user navigates to the landing entry page
#
#Scenario: 3 Validate on the Copy all certificate data EXPCT landings radio button
#Given I am on CC dashboard page
#And I don’t have JavaScript enable
#When I click on the copy button on the Completed document
#And user navigates to the /copy-this-catch-certificate page
#And user select Copy all certificate data EXPCT landings radio button
#And select on the Acknowledge
#Then click on the save and continue
#And user navigates to the landing entry page
#
#Scenario: 4 Validate on the Copy all certificate data and void the original radio button
#Given I am on CC dashboard page
#And I dont have JavaScript enable
#When I click on the copy button on the Completed document
#And user navigates to the /copy-this-catch-certificate page
#And user select Copy all certificate data and void the original radio button
#And select on the Acknowledge
#Then click on the save and continue
#And user navigates to the copy void conformation page
#
#Scenario: 5 Validate on the Back link button
#Given I am on CC dashboard page
#And I don’t have JavaScript enable
#When I click on the copy button on the Completed document
#And user navigates to the /copy-this-catch-certificate page
#And user click on the back link
#Then user navigates to the dashboard page
#
#Scenario: 6 Validate on the Walsh language button
#Given I am on CC dashboard page
#And I don’t have JavaScript enable
#When I click on the copy button on the Completed document
#And user navigates to the /copy-this-catch-certificate page
#And user click on the Walsh language
#Then page will be displayed on the Walsh language
#
#@FI0-4913
#Scenario: 1 Create draft catch certification button - Happy Path - Copy all certificate data option selected + acknowledgement accepted
#Given I am on the /copy-this-catch-certificate page of my CC application
#And I opted to ‘copy all certificate data’
#And I checked the acknowledgement
#When I click on ‘Create draft catch certificate'
#And validation runs (this should work as it currently does)
#And validation passes
#Then my CC draft application will be created
#And I am navigated to the /landings-entry page of my newly created CC draft application, and here I will see the message on top of the page (as currently appears): This draft was created by copying document [insert document ID]. You are reminded that you must not use a catch certificate or landing data for catches that have already been exported as this is a serious offence and may result in enforcement action being taken.
#
#Scenario: 2 Create draft catch certification button - Happy Path - Copy all certificate data EXCEPT the landings option selected + acknowledgement accepted
#Given I am on the /copy-this-catch-certificate page of my CC application
#And I opted to ‘copy all certificate data EXCEPT the landings’
#And I checked the acknowledgement
#When I click on ‘Create draft catch certificate'
#And validation runs
#And validation passes
#Then my CC draft application will be created
#And I am navigated to the /landings-entry page of my newly created CC draft application, and here I will see the message on top of the page (as currently appears): This draft was created by copying document [insert document ID]. You are reminded that you must not use a catch certificate or landing data for catches that have already been exported as this is a serious offence and may result in enforcement action being taken.
#
#Scenario: 3 Save and continue button - Happy path - Copy all certificate data AND void the original option selected + acknowledgement accepted
#Given I am on the /copy-this-catch-certificate page of my CC application
#And I opted to ‘copy all certificate data AND void the original’
#And I checked the acknowledgement
#When I click on ‘Create draft catch certificate'
#And validation runs
#And validation passes
#Then I am simply navigated to the /copy-void-confirmation page
#
#Scenario: 4 Cancel selected
#Given I am on the /copy-this-catch-certificate page of my CC application
#When I select ‘Cancel’
#Then I am simply navigated to the /catch-certificates page (no copying or voiding takes place as per current behaviour)
#
#Scenario: 5 No selection made and/or acknowledgement missing - errors shown
#Given I am on the /copy-this-catch-certificate page of my CC application
#When I do do not select an answer and/or check the acknowledgement
#And then click on ‘Create draft catch certificate’
#Then an error is shown in English / Welsh
#
#@FI0-4914
#Scenario:- 1 Continue button after selecting ‘Yes’ - Happy Path
#Given I am on the /copy-void-confirmation page
#And I selected ‘Yes, create a copy of the catch certificate then void the original'
#When I click on ‘Continue'
#And validation runs
#And validation passes
#Then my new CC draft application will be created
#And the cc document I wanted to void will be voided
#And I am navigated to the /landings-entry page of my newly created CC draft application, and here I will see the message on top of the page (as currently appears):
##This draft was created by copying a document that has now been voided. You are reminded that you must not use a catch certificate or landing data for catches that have already been exported as this is a serious offence and may result in enforcement action being taken.
#
#Scenario: 2 Continue button after selecting ‘No’ - Happy Path
#Given I am on the /copy-void-confirmation page
#And I selected ‘No, create a copy of the catch certificate only'
#When I click on ‘Continue'
#And validation runs
#And validation passes
#Then my new CC draft application will be created
#And No cc documents are voided
#And I am navigated to the /landings-entry page of my newly created CC draft application, and here I will see the message on top of the page (as currently appears):
##This draft was created by copying document [insert document ID]. You are reminded that you must not use a catch certificate or landing data for catches that have already been exported as this is a serious offence and may result in enforcement action being taken.
#
#Scenario: 3 No selection made
#Given I am on the /copy-void-confirmation page
#And I no selected an answer
#When I click on ‘Continue’
#Then I am shown an error in English / Welsh
#
#Scenario: 4 Cancel selected
#Given I am on the /copy-void-confirmation page
#When I select ‘Cancel’
#Then I am simply navigated to the /catch-certificates page
#
#@FI0-4815
#Scenario : 1Verify the page 'copy-void-conformation' is displayed when javascript is not enabled
#Given I am on the copy-void-conformation page
#And I don’t have java script enabled
#When I am on the void the original catch certificate page
#Then we observe as per UI design
#
#Scenario: 2 Validate on the continue button
#Given I am on the copy-void-confirmation page
#And I don’t have java script enabled
#When I am select yes button
#And click on the continue button
#Then I am switching English to Welsh language
#
#Scenario: 3 Validate the Language toggle button
#Given I am on the copy-void-confirmation page
#And I don’t have java script enabled
#When I am select NO button
#And click on the continue button
#Then I am Switching English to Welsh Language
#
#@FI0:4915
#Scenario 1:Validate Copy Void Confirmation page in CC journey
#Given I have navigate into the copy-void-conformation page
#And I don’t have java script enabled
#When this page loads
#Then Copy Void Confirmation page will be displayed.
#
#Scenario 2:Validate copy-void-confirmation page when I select yes button
#Given  I have navigate into the copy-void-confirmation page
#And I don’t have java script enabled
#When I am select yes button
#And click on the continue button
#Then create a copy of the catch certificate void the original
#
#Scenario 3:Validate copy-void-confirmation page when I  select No button
#Given  I have navigated into the copy-void-confirmation page
#And I don’t have java script enabled
#When I am select NO button
#And click on the continue button
#Then create a copy of the catch certificate only.
#
#Scenario 4:Validate back link button on the  /copy-void-confirmation of  CC application
#Given I opt to navigate to the /copy-void-confirmation of my CC application
#And I do not have javascript enabled
#When click on Back link.
#Then page Navigates user to the /copy-this-catch-certificate page.
#
#Scenario 5:Validate welsh translation on the /copy-void-confirmation on CC application
#Given I am on the /copy-void-confirmation of my CC application
#And I do not have javascript enabled
#When I select welsh
#Then the page will be translated into Welsh