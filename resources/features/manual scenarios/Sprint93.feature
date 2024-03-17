
#FI0:4968 CC Create generic "Forbidden" message page (403 error) when javascript is disabled

#Scenario:1 Verify the forbidden page is shown when javascript is not enabled
#Given I logged in to the application
#And I have navigated to a document that does not belong to me
#And I do not have javascript enabled
#Then the page will be rendered as “Forbidden” page

#Scenario:2 Verify the forbidden page is shown in Welsh language when language is changed to Welsh and javascript is not enabled
#Given I logged in to the application
#And I have navigated to a document that does not belong to me
#And I do not have javascript enabled
#Then the page will be rendered as “Forbidden” page
#When I change the language to Welsh translation
#Then the “Forbidden” page will be translated into Welsh

#Scenario:3 Verify the forbidden page is shown in Welsh language when language is in Welsh before navigating to forbidden page
#Given I logged in to the application
#And I change the language to Welsh
#And I have navigated to a document that does not belong to me
#And I do not have javascript enabled
#Then the page will be rendered as “Forbidden” page
#And the “Forbidden” page will be displayed in  Welsh

#F10:CC:4868 Buttons on Delete draft certificate page for users when Javascript is disabled
 #Scenario 1: Validate Yes button on the delete this draft catch certificate page
 #Given I have logged into the application with valid user details
 #And I have disable JavaScript
 #When I navigate to CC dashboard page
 #And I select delete button on a draft document
 #Then user navigates to the delete-this-draft-catch-certificate page of my CC application
 #When user select “yes” button on the page
 #And click on save and continue
 #Then my CC draft application will be deleted
 #And I am navigated to the cc dashboard page where I can no longer see the deleted CC draft application


 #Scenario 2: Validate No button on the delete this draft catch certificate page
 #Given I have logged into the application with valid user details
 #And I have disable JavaScript
 #When I navigate to CC dashboard page
 #And I select delete button on a draft document
 #Then user navigates to the delete-this-draft-catch-certificate page of my CC application
 #When user select “NO” button on the page
 #And click on save and continue
 #Then my CC draft application will NOT be deleted
 #And I am navigated to the cc dashboard page where I can still see/access this CC draft application


 #scenario 3: Validate without select any button save and continue button on the delete this draft catch certificate page
 #Given I have logged into the application with valid user details
 #And I have disable JavaScript
 #When I navigate to CC dashboard page
 #And I select delete button on a draft document
 #Then user navigates to the delete-this-draft-catch-certificate page of my CC application
 #And click on save and continue
 #Then error will display.


#F10:4668 SD: Easily differentiate between the two catches on the product summary page
#Scenario:1 validate  differentiate between the two catches on the product summary page with font size
#Given I have entered a product when creating a Storage Document
#When I am viewing the Products that I have added to the consignment
#Then I will see whatever I entered in the ‘Document Number’ field in a separate column to the right of the product name and to the left of the edit option
#And the font will not be in bold
#And the font size will be 19px



#FI0-4945 CC: Display message(s) and don't allow submission when no licence holder is found
#Scenario:1 Verify the error message on Check your information page when Selecting vessel of licence holder field blank
#Given I have logged into the application
#And I  navigate to the Landing details page and enter landing vessel but not ‘Vessel not found (N/A)
#And the licence holder field for the landing vessel is blank
#And I navigate to ‘Check your information’ page
#When I select ‘Accept and create catch certificate’
#Then I will see the error message(s) for each landing that does not return a licence holder
#And The error message contains licence holder cannot be found


#Scenario: 2 Verify the error message is Vessel not found displayed and not Licence Holder not found when Vessel not found is selected
#Given I have logged into the application
#And I navigate to the Landing details page and enter landing vessel as ‘Vessel not found (N/A)
#And I navigate to the ‘Check your information’ page
#When I select ‘Accept and create catch certificate’
#Then  I will only see the error messages for vessel not found
#And I verify the error message 'Contact support on 03301591989 to replace your Vessel name or PLN entries of 'Vessel not found(N/A)'
#And I will not see the error message 'licence holder cannot be found'

#Scenario: 3 Verify the error message licence holder cannot be found is translated to Welsh
#Given I have logged into the application
#And I navigate to the Landing details page and enter landing vessel but not ‘Vessel not found (N/A)'
#And the licence holder field for the landing vessel is blank
#And I  navigate to the ‘Check your information’ page
#When I select ‘Accept and create catch certificate’
#Then I will see the error message(s) for each landing that does not return a licence holder
#And The error message contains licence holder cannot be found
#When the change the language to Welsh
#Then I verify the error is displayed in Welsh

#FI0:4567  PS: Easily differentiate between catches on the catches summary page
#Scenario: Verify that the Catch Certificate Number is now displayed on the catch add details page (/catch-added)
#Given I have entered a product when creating a Processing Statement
#When I am viewing the catches that I have added to the consignment
#Then I will see whatever I entered in the ‘Catch Certificate Number’ field in a separate column to the right of the product name and to the left of the edit option
#And the font size will be 19px
#And the font will not be in bold.

#FI0:4941  AA: Add Licensed holder to Admin App

#Scenario 1: Validate the new added field ‘Licence Holder’ section in the admin app for ‘Vessel Not Found N/A' option
#Given I have logged into the Admin App
#And an exporter has selected the ‘Vessel Not Found N/A' option or a licence holder not found
#When I view the admin add ‘landing details’ section
#Then I can view the new 'Licence Holder' field to the right of the 'Export Weight’ field
#And that field will display ‘licence holder not found’
#And I can edit the field
#And the field will accept special characters
#And the field will be limited to 50 characters

#Scenario 2:Validate the new added field ‘Licence Holder’ section in the admin app for Vessel option
#Given I have logged into the Admin App
#And an exporter has selected a valid Vessel in the external application(FES)
#When I view the admin add ‘landing details’ section
#Then I can view the new 'Licence Holder' field with the Licence Holder name for the selected vessel

#Scenario 3: Validate the new added field Licence Holder field for special characters and more than 50 character field limit
#Given I have logged into the Admin App
#When I view the admin add ‘landing details’ section
#Then I can view the new 'Licence Holder' field
#And validate that the field accepts special characters
#And the filed only accepts 50 character limit

#Scenario 4:Validate the  CatchCertificateCase.json file  after exporter Electing to save the changes in the Licence Holder field
#Given I have logged into  the Admin App
#And an exporter has selected the ‘Vessel Not Found N/A' option or a licence holder cannot be found
#And I view the admin add ‘landing details’ section
#And I have edited the ‘Licence Holder' field
#When I select to save
#Then the ‘licence holder’ field in the CatchCertificateCase.json file will be updated with what was entered in the ‘Licence Holder’ field
#And the 'vesselOverriddenByAdmin’ field in the CatchCertificateCase.json file will be set to 'True’

#Scenario 5: Validate the Licence Holder field error message for blank/no data entered
#Given I have logged into the Admin App
#And I have not entered any data in the ‘Licence Holder’ field
#When I elect to save
#Then it will display an error message such as " You must enter a name for the licence holder of the vessel in order to continue."


#FI0-4705 PS: Add guidance on where to find commodity codes and other guidance
#Scenario 1:  Validate newly added guidance text on the consignment-details page in the PS journey
#Given I have navigated into the  /add-consignment-details page of my PS application
#When I view this page
#Then I want to be able to read guidance  on where to find commodity codes

#Scenario 2:  Validate Welsh translation content for the guidance text
#Given I have navigated into the  /add-consignment-details page of my PS application
#When I have the Welsh translation mode toggled on
#Then I can view guidance in Welsh on where to find commodity codes

#Scenario 3: Validate newly added guidance summary text changes on the consignment-details page in the PS journey
#Given I have navigated into the  /add-consignment-details page of my PS application
#When I view this page
#Then I want to be able to read guidance to explain that this page is a summary of all species and products that are being exported with this document
#And that the details must be legible in English

#Scenario 4: Validate Welsh translation content  for the newly added guidance summary text changes on the consignment-details page.
#Given I am on the /add-consignment-details page of my PS application
#When I have the Welsh translation mode toggled on
#Then  I can view guidance in Welsh to explain that this page is a summary of all species and products that are being exported with this document





#F10:4867 CC: Delete this catch certificate for users when Javascript is disabled (UI)

#Scenario 1:Validate  Delete this catch certificate page in CC
#Given I have navigate into the /delete-this-draft-catch-certificate of my CC application
#And I don’t have javascript enabled
#When this page loads
#Then the /delete-this-draft-catch-certificate page is displayed.

#Scenario 2: Validate Select answer button in /delete-this-draft-catch-certificate of my CC application
#Given I have navigated into the /delete-this-draft-catch-certificate of my CC application
#And I do not have javascript enabled
#When the page is rendered
#Then I can select whether I want to delete my draft CC application

#Scenario 3: Validate Back Hyperlink in /delete-this-draft-catch-certificate of my CC application
#Given I opt to navigate to the /delete-this-draft-catch-certificate of my CC application
#And I do not have javascript enabled
#And the page is rendered
#When I click on back link
#Then I am  Navigated  to the CC dashboard page

#Scenario 4: Validate  Welsh translation in /delete-this-draft-catch-certificate of my CC application
#Given I opt to navigate to the /delete-this-draft-catch-certificate of my CC application
#And I do not have javascript enabled
#When I select welsh
#Then the page will be translated into Welsh language

#F10:4981 CC: Dashboard edge-case functionality when javascript is disabled
#Scenario 1: Validate that the Create CC button is not displayed when we have reach maximum draft limit (50)
#Given I have navigate to the CC dashboard page.
#And I do not have javascript enabled
#And this page will be rendered.
#When I have reached the maximum draft limit(50)
#Then Create CC button is not displayed.

#Scenario 2: Validate Welsh translation when we have reach maximum draft limit (50)
#Given I have navigated to the CC dashboard page
#And I do not have javascript enabled
#When I select  Welsh translation
#Then the page will be translated into Welsh language

#FI0:4946 FES-API : have the exact same functionality for fishing vessel master as the Gov.uk Core service
#Scenario 1:Validating master vessel with single landing

#Given a user has chosen to create a CC using the FES-API service
#And A vessel master has been provided by CEFAS in the vessel.json file
#When I create a CC with a single landing
#And i download the PDF
#Then section 5 of the PDF should display the name of the vessel master

#Scenario 2:Validating master vessel with multi landing
#Given a user has chosen to create a CC using the FES-API service
#And A vessel master has been provided by CEFAS in the vessel.json file
#When I create a CC with a multi landing
#And I  download the PDF
#Then In multi vessel schedule section should contain an extra column that states the name of the vessel master for each row

#Scenario 3:Validating single landing which is not there in vessel master
#Given a user has chosen to create a CC using the FES-API service
#And A vessel master has not been provided by CEFAS in the vessel.json file
#When  I have create a CC with single landing
#Then  Don"t allow submission when no licence holder is found

#Scenario 4:Validating multiple landing  which is not there in vessel master
#Given a user has chosen to create a CC using the FES-API service
#A vessel master has not been provided by CEFAS in the vessel.json file
#When I have  create a CC  With multiple landing
#Then  Don"t allow submission when no licence holder found

#FI0:4979 Display content in selected language (Welsh/Eng) of FES 'page not found' 404 page
#Scenario:1 Verify that page 'Page not found' is displayed in English language by default
#Given I logged in to the application
#And I am viewing the  'Page not found' 404 page
#When I have not selected language preference
#Then I verify all the content is displayed in English

#Scenario:2 Verify that page 'Page not found' is displayed in Welsh when language is changed to Welsh from English
#Given I logged in to the application
#And I am viewing the  'Page not found' 404 page
#And I verify all the content is in English
#When I change the language to Welsh using the toggle
#Then the content in the page is displayed in Welsh

#Scenario:3 Verify that page 'Page not found' is displayed in English when the language is changed from Welsh to English
#Given I logged in to the application
#And I am viewing the  'Page not found' 404 page
#And content is  displayed in Welsh
#When I switch the language to  English using the language toggle
#Then all content is displayed in English

#Scenario:4 Verify that Title of the page 'Page not found' is displayed in the language it is selected
#Given I logged in to the application
#And I am viewing the  'Page not found' 404 page
#Then I verify the title of the page in browser is in english
#And  I verify title in english while  inspect the page
#When I have changed the language to Welsh
#Then I verify the title of the page  in web browser is in Welsh
#And  I verify title in welsh  while inspect the page









