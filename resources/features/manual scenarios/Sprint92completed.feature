
   #FI0:4824-Header and footer for users that do not have javascript enabled
   #Scenario:1 Verify the header is displayed and the contents, links in header when Java script is not enabled in the application
   #Given I am logged in and I am in journey selection page
   #When I don’t have java script enabled
   #Then I verify header contains links 'Create a UK catch certificate', Manage account and Sign out and GOV.uk logo
   #When I navigate to any page on the journey
   #Then I verify header contains links 'Create a UK catch certificate', Home, Favourites, Manage account and Sign out and GOV.uk logo

   #Scenario:2 Verify the footer is displayed and the contents, links in header when Java script is not enabled in the application
   #Given I am creating a catch certificate
   #And I don’t have java script enabled
   #When I navigate to any page on the journey
   #Then the footer will be displayed with contains Accessibility, Cookies, Privacy, Service Improvement links, 'Open Government Licence' and Crown logo

   #Scenario:3 Verify clicking on hyperlinks in the header will navigate to the respective target page
   #Given I am creating a catch certificate
   #And I don’t have javascript enabled
   #When I navigate to any page on the journey
   #And click on Gov.uk
   #Then system Navigate to Welcome to Gov.uk page
   #When Click on ‘Create a catch certificate’ link in the header
   #Then system Navigate to CC dashboard page
   #And click on Home link in the header
   #Then system Navigate to journey selection page
   #And the header will not contain Home and Favourite link
   #When I am on any page on the CC journey
   #And click on Favourites
   #Then system navigates to Manage favourite page
   #And the Header will not contain Favourite link
   #When I am on any page on the CC journey
   #And I click on Manage account
   #Then system should navigate to Manage account page
   #When I click on sign out
   #Then I sign out from the application



   #Scenario:4 Verify Clicking on the hyperlinks in the Footer will navigate to the respective target page
   #Given I am creating a catch certificate
   #And I don’t have javascript enabled
   #When I navigate to any page on the journey
   #And click on Accessibility link
   #Then I navigate to Accessibility page
   #And the header will not contain home and favourite link
   #When click on Cookies link
   #Then I navigate to Cookies page
   #And the header will not contain home and favourite link
   #When click on Privacy link
   #Then I navigate to Privacy page
   #And the header will not contain home and favourite link
   #When click on Service Improvement link
   #Then I navigate to Service Improvement page
   #And the header will not contain home and favourite link
   #When click on Open Government Licence link
   #Then I navigate to Open Government Licence page
   #When click on Crown Logo
   #Then I navigate to Crown copy right page

   #Scenario:5 Verify header and footer contents are translated to Welsh when language is changed from English to Welsh
   #Given I am viewing the Header and footer of my CC application
   #And I do not have javascript enabled
   #When I select Welsh translation
   #Then the page will be translated into Welsh

   #FIO:4928 CC: Display Licensed vessel holder on section 5 of PDF
   #Scenario:1 Verify the Vessel license holder is displayed in section5 of PDF document for Catch Certificate
   #Given I have selected a single vessel for my landing and species entered for that landing is available in landing details
   #And I have a license holder for the landing date specified
   #When I elect to ‘Accept and Create catch Certificate’
   #Then the Catch Certificate PDF will be created
   #And section 5 of the catch certificate PDF field name: ‘Name of master of fishing vessel - Signature ' Seal:’ will show the license holder name
   #And it will show the license holder (as supplied by CEFAS) on the date of the landing

   #Scenario:2 Verify the Vessel License holder details in PDF is displayed which is updated in admin interface before CC Creation
   #Given I have selected a single vessel for my landing, and I am in summary page after completed the all the pages
   #And I change the vessel details in admin interface and vessel has licence holder for the landing date specified
   #When I elect to ‘Accept and Create catch Certificate’ in core application
   #Then the Catch Certificate PDF will be created
   #And section 5 of the catch certificate PDF field name: ‘Name of master of fishing vessel - Signature ' Seal:’ will show the license holder name
   #And it will show the license holder (as supplied by CEFAS) on the date of the landing

   #FI0 4937 CC: Add "LicenceHolder" to json files sent to Case Management
   #Scenario:1 Verify the Vessel license holder is added in payload sent to Case Management
   #Given I have selected a single vessel for my landing and vessel has licence holder for the landing date specified
   #When I elect to ‘Accept and Create catch Certificate’
   #Then I verify the payload in Case Management
   #And I see Licence holder is added in the Payload in Landings section of payload
   #And I verify licence holder name is as supplied by CEFAS on the date of the landing

  #Scenario:2 Verify the Vessel license holder is added to payload sent to Case Management when vessel is updated by admin before CC creation.
   #Given I have selected a single vessel for my landing, and I am in summary page after completed the all the pages
   #And I change the vessel details in admin interface and vessel has licence holder for the landing date specified
   #When I elect to ‘Accept and Create catch Certificate’ in core application
   #Then I verify the payload in Case Management
   #And I see Licence holder is added in the Payload in Landings section of payload
   #AND I verify the vessel details in payload is same which updated in admin interface
   #And I verify licence holder name is as supplied by CEFAS on the date of the landing for the vessel which is updated by admin


   #FI0:4838 - CC: Beta Banner for users that do not have javascript enabled
   #Scenario 1: Verify Beta banner with Feedback link and Language toggles(english and welsh) when  javascript disabled
   #Given I am creating a catch certificate
   #And I don’t have javascript enabled
   #When I navigate to any page on the journey
   #Then the Beta Banner will be displayed with Feedback link and Language toggles(english and welsh).

   #Scenario 2: Verify clicking on hyperlink and Language toggles navigate to the respective target page when  javascript disabled
   #Given I am creating a catch certificate
   #And I don’t have javascript enabled
   #When I navigate to any page on the journey
   #Then the Beta Banner will have Feedback hyperlink  Language toggles
   #When Click on Feedback
   #Then page Navigates to Give your feedback on the Fish Export Service - Department for Environment Food & Rural Affairs
   #When click on the Toggle to Welsh
   #Then Page Translates  into Welsh
   #When click  the toggle to English
   #Then Translates the page content into English

   #Scenario 3: Verify page content translated in to english to Welsh translation when  javascript disabled
   #Given I am viewing the Beta Banner of my CC application
   #And I do not have javascript enabled
   #When I select Welsh translation
   #Then the page will be translated into Welsh


   #FI0:4850-CC: Add reference page for users when Javascript is disabled (UI)
   #Scenario 1: validate  content on the add reference page displayed correctly
   # Given I have logged into the application with JS disabled.
   # And I have chosen to create a CC.
   # When i navigate to the 'Add Reference' page.
   # Then the content of the page should be rendered correctly.


   #Scenario 2: validate  edit field on add reference page
   #Given I  have logged into the application with JS disabled.
   #And  I have chosen to create a CC.
   #When I navigated to the 'Add Reference' page.
   #And  I enter data in the field section
   #When I return back to add reference page
   #Then I edit a already existing data is editable mode

   #Scenario 3: Validate links on the add reference page
   #Given I am login to application with JS disabled.
   #And I have chosen to create a CC
   #When I navigated to the 'Add Reference' page.
   #And I click on 'BACK' link
   #Then user Navigates to the progress page
   #When I return back to  'Add Reference' page.
   #And I click on 'Back to Your Progress' link
   #Then user Navigates to the progress page

   #Scenario 4: Validate on the language toggle in add reference page
   #Given I am login to application with JS disabled.
   #And  I have chosen to create a CC
   #when I navigated to the 'Add Reference' page.
   #And I am switching English language to Walsh language
   #Then page will be translated into Welsh language

  #4840-CC:
   #Scenario:1 Verify that system will navigate to progress page when selected 'Direct landing' in landing entry page and clicking on back link will come back to landing entry page and selection will be present

   #Given I am logged in to application and create a Catch certificate
   #And I do not have  java Script enable
   #And I am on the /landings-entry page of my CC application
   #When I Select direct landing and click on ‘Save and Continue’
   #Then System will navigate to Progress page
   ##And clicking on back link in the progress page
   #Then I am navigated to the Landing entry page and selection of 'Direct landing' will be present

   #Scenario:2 Verify that system will navigate to progress page when selected 'Manual entry' in landing entry page and clicking on back link will come back to landing entry page and selection will be present
   #Given I am logged in to application and create a Catch certificate
   #And I am on the /landings-entry page of my CC application
   #When I Select manual entry and click on ‘Save and Continue’
   #Then System will navigate to Progress page
   #And clicking on back link in the progress page
   #Then I am navigated to the Landing entry page and selection of 'Manual entry' will be present

   #Scenario:3 Verify that system will navigate to progress page when selected 'Upload from csv file' in landing entry page and clicking on back link will come back to landing entry page and selection will be present
   #Given I am logged in to application and create a Catch certificate
   #And I am on the /landings-entry page of my CC application
   #When I Select Upload from csv file and click on ‘Save and Continue’
   #Then System will navigate to Progress page
   #And clicking on back link in the progress page
   #Then I am navigated to the Landing entry page and selection of 'Upload from csv file' will be present

   #Scenario:4 Verify that system will not navigate to progress page when no selection is made and error will be displayed when click on Save and continue
   #Given I am logged in to application and create a Catch certificate
   #And I am on the /landings-entry page of my CC application
   #When I do not Select any option and click on ‘Save and Continue’
   #Then System will not navigate to Progress page
   #And error message will be displayed

   #Scenario:5 Verify that error will be displayed in Welsh when click on Save and continue without selecting any option and select language as welsh
   #Given I am logged in to application and create a Catch certificate
   #And I am on the /landings-entry page of my CC application
   #When I do not Select any option and click on ‘Save and Continue’
   #Then error message will be displayed
   #When language is changed to Welsh
   #Then error message will be displayed in Welsh

   #FI0:4828 CC: Landing entry page for users when Javascript is disabled (UI)
   #Scenario 1: Validate on the landing entry page when Javascript is disabled
   #Given I am login to application
   #And I don’t have JavaScript enabled
   #when I select CC journey
   #And click on the crate new catch certificate
   #Then user navigates to the landing entry page.

   #Scenario 2: Validate back link on the landing entry page
   #Given I am login to application
   #And I don’t have JavaScript enabled
   #when I select CC journey
   #And click on the create new catch certificate
   #Then user navigates to the landing entry page.
   #And click on the back link
   #Then Navigates the user to the CC dashboard page

   #Scenario 3: Validate language toggle on the landing entry page
   #Given I am login to application
   #And I don’t have JavaScript enabled
   #when I select CC journey
   #And click on the create new catch certificate
   #Then user navigates to the landing entry page.
   #And I am switching English language to Walsh language
   #Then page will be translated into Walsh

   #FI0:4825 Progress page for users when Javascript is disabled
   #Scenario 1:Validating progress page in cc journey when java script disable.
   #Given I am opt to navigate to the /progress page of my CC application
   #And I don’t have javascript enabled
   #When this page loads
   #Then the page will be displayed with 'Hyperlinks'

  # Scenario 2: Validating progress page 'Hyperlinks' in cc journey when java script disable.
   #Given I opt to navigate to the /progress page of my CC application
   #And I do not have javascript enabled
   #When the page is rendered
   #Then the following hyperlinks will be active
   #When click on 'Back’ link
   #Then Navigates the user to non JS equivalent page of the last page in the linear journey  (i.e. the /landings-entry page
   #When click on Your reference
   #Then navigates the user to Add-your-reference page
   #When click on Exporter details
   #Then Navigates the Add Exporter details page
   #When click on product details
   #Then Navigates What are you exporting page
   #When click on landing details
   #Then navigated to What journey does the export take? page
   #When click on catch water
   #Then navigated to Whose waters were the fish or shellfish caught in? page
   #When click on Export journey
   #Then navigated to  What journey does the export take?
   #When click on Transport type
   #Then navigated to How does the export leave the UK?
   #When click on transport details
   #Then Add transportation details page

   #Scenario 3: Validating Welsh translation in progress page
   #Given I am on the /progress of my CC application
   #And I do not have javascript enabled
   #When I select Welsh translation
   #Then the page will be translated into Welsh


   #FI0-4930 CC: Display Licensed vessel holder on multi vessel schedule of PDF.
   #Scenario: Name of master of fishing vessel should be displayed in the Schedule for Multiple landings.
   #Given I have multiple vessels for multiple landings
   #And I have a licence holder for all the landing dates specified
   #When I click on the ‘Accept and Create catch Certificate’ button
   #Then the Catch Certificate PDF will be created
   #And this will show the licensed vessel holder name for each landing in the multi vessel schedule table of the PDF
   #And the ‘Name of master of fishing vessel - Signature ' Seal:’ field will display ' See Schedule'


   #4926:Home page for users when Javascript is disabled
   #Scenario 1: Validate the home page for default view and Rendering the page
   #Given I have navigated to the Home page of the FES application
   #And I do not have javascript enabled
   #Then the page will be displayed with “Create a UK catch certificate (Including links to direct landing document“ field,Create a UK processing statement field,Create a UK storage document field and continue button

   #Scenario 2: Validate UI for Pre-populated fields as Create a UK catch certificate (Including links to direct landing documents) on the home page
   #Given I have navigated to the Home page of the FES application
   #And I do not have javascript enabled
   #When i land on the page
   #Then the “Create a UK catch certificate (Including links to direct landing documents)“ field will be Pre-populated

   #Scenario 3: Validate the Continue button visibility on the home page and check if user is able to navigate from  home page  to CC dashboard page
   #Given I have navigated to the Home page of the FES application
   #And that I made a “Create a UK catch certificate (Including links to direct landing documents)journey” selection
   #And I do not have javascript enabled
   #When click on continue button
   #Then I should be navigated to the CC  dashboard page

   #Scenario 4: Validate the Continue button visibility on the home page and check if user is able to navigate from home page  to PS dashboard page
   #Given I have navigated to the Home page of the FES application
   #And that I made a “Create a UK processing statement” selection
   #And I do not have javascript enabled
   #When click on continue button
   #Then I should be navigated to the PS dashboard page

   #Scenario 5: Validate the Continue button visibility on the home page and check if user is able to navigated from  home page to SD  dashboard page
   #Given I have navigated to the Home page of the FES application
   #And that I made a “Create a UK storage document” selection
   #And I do not have javascript enabled
   #When click on continue button
   #Then I should be navigated to the SD dashboard page

   #Scenario 6: Validate language content for the Welsh translation on the home page
   #Given I am on the Home page of the FES application
   #And I do not have javascript enabled
   #When I select Welsh translation
   #Then the page will be translated into Welsh

   #Scenario 7:Validate the UI content and page title for english and welsh both
   #Given I am on the Home page of the FES application
   #And I do not have javascript enabled
   #When I select Welsh/english translation
   #Then UI should be in proper way and page translation consistent


   #4855 CC: Create Dashboard page for users with no Javascript enabled browser
   #Scenario 1: Validate the CC Dashboard page with application state
   #Given I have navigated to the Dashboard page of my CC application
   #And I do not have javascript enabled
   #Then the page will be displayed
   #And under the ‘In Progress’ section will show all applications in a state of Draft / Failed /locked progress

   #Scenario 2: Validate all the External Hyperlinks under the need help section on the dashboard page
   #Given I have navigated the Dashboard page of my CC application
   #And I do not have javascript enabled
   #When the page is rendered
   #Then the following hyperlinks will be active:
   #When I click on Guidance on exporting fish (gov.uk)link
   #Then page navigated to Exporting or moving fish from the UK page
   #When I click on Prior notification form (gov.uk)link
   #Then page navigated to Prior notification to land fish in the EU page
   #When I click on Pre-landing declaration (gov.uk) link
   #Then I navigated to  a pre-landing declaration to land fish in an EU port page
   #When I click on Create a UK processing statement(gov.uk)
   #Then I  navigated to Create a UK processing statement page
   #When I click on Create a UK storage document(gov.uk)link
   #Then I navigated to Create a UK storage document page

   #Scenario 3: Validate the visibility of Create a new catch certificate button
   #Given I am on the Dashboard page
   #And I don’t have javascript enabled
   #When I  click on ‘Create a new catch certificate'
   #Then it should be clickable and I am navigated to the ‘landings-entry’ page

   #Scenario 4: Validate the Manage your product favourites link on the cc dashboard
   #Given I am on the Dashboard page
   #And I don’t have javascript enabled
   #When I click on ‘Manage your product favourites'
   #Then I am navigated to the ‘manage-favourites’ page

   #Scenario 5: validate the status of draft doc In Progress section
   #Given I am on the Dashboard page
   #And I don’t have javascript enabled
   #When I am viewing the ‘In Progress’ section
   #Then the following functionality exists:
   #When I click on Continue button
   #Then I opens the application on the 'Progress’ page
   #When I click Delete button
   #Then I  Navigates to the ‘delete-this-draft-catch-certificate’ page

   #Scenario 6: Validate the content for the Welsh translation
   #Given I am on the Dashboard page of my CC application
   #And I do not have javascript enabled
   #When I select Welsh translation
   #Then the page will be translated into Welsh


















