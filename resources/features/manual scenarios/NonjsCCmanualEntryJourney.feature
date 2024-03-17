#Feature: Creating CC using manual landing option when javascript is disabled
#  As an Exporter,
#  I want to be able to select the manual landing option while creating a CC when JS is disabled
#  So that i can create a CC document
#
#@FI0-4939:
#Scenario: 1 Validate newly Added a species/state/presentation buttons using ‘Add products’ section for Happy simple path
#Given I have navigated the /what-are-you-exporting of my CC application
#And I do not have javascript enabled
#And the page is rendered
#And a species / state / presentation / commodity code is chosen/pre-selected(in the case of commodity code) on the ‘Add products’ section
#And I did not click the ‘Add to product favourites’ checkbox on the ‘Add products’ section
#When I click Add Species  / Add state / Add presentation buttons
#And validation runs and passes check a value has been specified from the list available
#Then the Specie  / state / presentation will be added
#And based on this, the options in the next drop-down directly below (if required) will be available
#
#Scenario: 2 Validate the Add species/ add presentation / add state Button in ‘Add products’ section- unhappy path/errors displayed
#Given I have navigated the /what-are-you-exporting of my CC application
#And I do not have javascript enabled
#And the page is rendered
#And I do not specify a species / state / presentation on the ‘Add products’ section
#When I click the Add Species  / Add state / Add presentation button(s)
#And validation runs and passes check a value has been specified from the list available
#Then errors will be displayed (see attached screenshot for example)
#
#@FI0-4969:
#Scenario: 1 Validate the  Rendering the 500 error page
#Given I have attempted to carry out an action but the service down/500 error
#And I do not have javascript enabled
#Then the page will be rendered as per existing “Sorry, there is a problem with the service”  in the current app
#
#Scenario: 2 Validate the Welsh translation for 500 error
#Given I have attempted to carry out an action but the service down/500 error
#And I do not have javascript enabled
#When I am on the Welsh translation or already selected Welsh previously
#Then the “Sorry, there is a problem with the service” will be translated into Welsh
#
#@FI0-5089:
#Scenario: 1 Validate the Rendering the do-you-have-a-road-transport-document page
#Given I have navigated to the do-you-have-a-road-transport-document page of my CC application
#And I do not have javascript enabled
#Then the page will be rendered as per attachment
#
#Scenario: 2 Validate the Editable fields Yes or No
#Given I have navigated the do-you-have-a-road-transport-document page of my CC application
#And I do not have javascript enabled
#When the page is rendered
#Then I can select one of the options from both Yes or No
#
#Scenario: 3 Validate the Hyperlinks on the do-you-have-a-road-transport-document page
#Given I have navigated the do-you-have-a-road-transport-document page of my CC application
#And I do not have javascript enabled
#When the page is rendered
#Then the following hyperlinks will be active:
##Back to your progress -  Navigates the user to page ‘progress’
##Back - Navigates the user to the previous page of the journey (how-does-the-export-leave-the-uk)
#
#Scenario: 4 Validate the Welsh translation for do-you-have-a-road-transport-document page content
#Given I am on the do-you-have-a-road-transport-document page of my CC application
#And I do not have javascript enabled
#When I select Welsh translation
#Then the page will be translated into Welsh
#
#@FI0-5092:
#Scenario: 1 Validate the Save and Continue button by selecting the yes option
#Given I am on the ‘do-you-have-a-road-transport-document’ page
#And I don’t have javascript enabled
#And I have selected ‘Yes’
#When I elect to ‘Save and continue
#Then data specified on the page will be saved
#And I will be navigated to the ‘progress’  page
#
#Scenario: 2 Validate Save and Continue button by selecting the No option
#Given I am on the ‘do-you-have-a-road-transport-document’ page
#And I don’t have javascript enabled
#And I have selected ‘No’
#When I elect to ‘Save and continue
#Then data specified on the page will be saved
#And I will be navigated to the ‘add-transportation-details-truck’  page
#
#Scenario: 3  Validate the error content on the ‘do-you-have-a-road-transport-document’ page
#Given I am on the ‘do-you-have-a-road-transport-document’ page
#And I don’t have javascript enabled
#And I have not selected an option
#When I elect to ‘Save and continue
#Then I will get the following error at the top of the page
##”Select yes if you have a road transport document to go with this export”
#And the same message will appear above the option set
#And I will remain on the 'do-you-have-a-road-transport-document' page
#
#Scenario: 4 Validate Save as a draft button for input selection
#Given I am on the ‘do-you-have-a-road-transport-document’ page
#And I don’t have javascript enabled
#When I elect to ‘Save as draft’
#Then the latest details I specified on this page are saved
#And I am navigated to the CC dashboard page
#
#Scenario: 5 Validate the Welsh translation of errors for blank submission
#Given I am on the ‘do-you-have-a-road-transport-document’ page
#And I don’t have javascript enabled
#When I selected the Welsh translation
#Then the error will be displayed on the page in Welsh
#And I will remain on the do-you-have-a-road-transport-document page
#
#Scenario: 6 Validate the page title for English/welsh
#Given I am on the ‘do-you-have-a-road-transport-document’ page
#And I don’t have javascript enabled
#When I inspect the page and check for the page title
#Then it should be in the selected language
#
#@FI0-5097:
#Scenario: 1 Validate that the /add-transportation-details-truck page is rendered correctly
#
#Given I have navigated to the add-transportation-details page of my CC application
#And I do not have javascript enabled
#When I select the transport option of truck
#And I navigate to the truck details page (Selecting NO for the road transport document)
#And i click on ‘Save and Continue’ button
#Then the page will be rendered correctly
#And all the content of the page will be displayed appropriately
#
#Scenario: 2 Validate the valid information in the editable input fields are saved successfully
#Given I have navigated the add-transportation-details-truck page of my CC application
#And I do not have javascript enabled
#When I enter valid information in the below field
##Truck nationality
##Registration Number (Registration number must only contain letters, numbers, hyphens, and spaces)
##Place export leaves the UK (Place the export leaves the uk must only contain letters, numbers, apostrophes, and hyphens)
#And I click on the ‘Save and Continue’ button
#Then the input details should be saved successfully
#
#Scenario: 3 Validate that the Hyperlinks (Back Link) redirects to the appropriate pages
#Given I have navigated the add-transportation-details-truck page of my CC application
#And I do not have javascript enabled
#When I click on the ‘Back’ link on the page
#Then I will be navigated to the previous page of the journey (how-does-the-export-leave-the-uk)
##Back - Navigates the user to the previous page of the journey (/do-you-have-a-road-transport-document)
#
#Scenario: 4 Validate that the Hyperlinks (Back to Your Progress) redirects to the appropriate pages
#Given I have navigated the add-transportation-details-truck page of my CC application
#And I do not have javascript enabled
#When I click on the ‘Back to Your Progress’ link on the page
#Then I will be navigated to the Your Progress page
#
#Scenario: 5 Validate that the page is translated to Welsh when user clicks on ‘Welsh’ toggle
#Given I am on the add-transportation-details-truck page of my CC application
#And I do not have javascript enabled
#When I click on the Welsh translation toggle
#Then the page will be translated into Welsh
#
#@FI0-5098:
#Scenario: 1 Validate the Save and Continue button on the add-transportation-details-truck’ for Happy path
#Given I am on the ‘add-transportation-details-truck’ page
#And I don’t have javascript enabled
#And I have entered all mandatory fields with valid data
#When I elect to ‘Save and continue’
#Then data specified on the page will be saved
#And I will be navigated to the ‘progress’  page
#
#Scenario: 2 Validate the Save and Continue button if No data entered
#Given I am on the ‘add-transportation-details-truck’ page
#And I don’t have javascript enabled
#And I have not entered data in mandatory fields
#When I elect to ‘Save and continue’
#Then I will get the error at the top of the page
#And the same messages will appear above the relevant fields
#And I will remain on the 'add-transportation-details-truck' page
#
#Scenario: 3 Validate the Save and Continue button for Invalid data entered
#Given I am on the ‘add-transportation-details-truck’ page
#And I don’t have javascript enabled
#And I have entered invalid data in the 'Registration number' or 'Place export leaves the UK' fields
#When I elect to ‘Save and continue’
#Then I will get the error at the top of the page
#And the same message will appear above the relevant fields
#And I will remain on the 'add-transportation-details-truck' page
#
#Scenario: 4 Validate the  Save as draft button for Valid Data input
#Given I am on the ‘add-transportation-details-truck’ page
#And I don’t have javascript enabled
#And I have entered valid data in all mandatory fields
#When I elect to ‘Save as draft’
#Then the latest details I specified on this page are saved
#And I am navigated to the CC dashboard page
#
#Scenario: 5 Validate the Save as draft button for Invalid data input
#Given I am on the ‘add-transportation-details-truck’ page
#And I don’t have javascript enabled
#And I have entered invalid data in a field or not entered any data in a field
#When I click ‘Save as draft’
#Then the latest data entered on those fields are NOT saved
#And I am navigated to the CC dashboard page
#
#Scenario: 6 Validate the  Welsh translation of all the errors
#Given I am on the ‘add-transportation-details-truck’ page
#And I don’t have javascript enabled
#When I have selected Welsh translation
#Then error will be displayed on the page in Welsh
#And I will remain on the add-transportation-details-truck page
#
#
#@FI0-5099
#Scenario: 1 Validate the Rendering the page
#Given I have navigated to the add-transportation-details-plane page of my CC application
#And I do not have javascript enabled
#Then the page will be rendered as per attachment
#
#Scenario: 2 Editable fields
#Given I have navigated the add-transportation-details-plane page of my CC application
#And I do not have javascript enabled
#When the page is rendered
#Then the following fields are editable
##Flight number
##Container identification number or numbers
##Place export leaves the UK
#
#Scenario: 3 Validate the Hyperlinks on the add-transportation-details-plane
#Given I have navigated the add-transportation-details-plane page of my CC application
#And I do not have javascript enabled
#When the page is rendered
#Then the following hyperlinks will be active:
##Back to your progress -  Navigates the user to page ‘progress’
##Back - Navigates the user to the previous page of the journey (how-does-the-export-leave-the-uk)
#
#Scenario: 4 Validate the Welsh translation
#Given I am on the add-transportation-details-plane page of my CC application
#And I do not have javascript enabled
#When I select Welsh translation
#Then the page will be translated into Welsh
#
#@FI0-5100
#Scenario : 1 Validate the Save and Continue button - Happy path
#Given I am on the ‘add-transportation-details-plane’ page
#And I don’t have javascript enabled
#And I have entered all mandatory fields with valid data
#When I elect to ‘Save and continue’
#Then data specified on the page will be saved
#And I will be navigated to the ‘progress’  page
#
#Scenario: 2 Validate the Save and Continue button - No data entered
#Given I am on the ‘add-transportation-details-plane’ page
#And I don’t have javascript enabled
#And I have not entered data in mandatory fields
#When I elect to ‘Save and continue’
#Then I will get the error at the top of the page
#And the same messages will appear above the relevant fields
#And I will remain on the 'add-transportation-details-plane' page
#
#Scenario: 3 Validate the Save and Continue button - Invalid data entered
#Given I am on the ‘add-transportation-details-plane’ page
#And I don’t have javascript enabled
#And I have entered invalid data in any of the fields
#When I elect to ‘Save and continue’
#Then I will get the error at the top of the page
#And the same messages will appear above the relevant fields
#And I will remain on the 'add-transportation-details-plane' page
#
#Scenario: 4 Validate the Save as draft button - Valid data
#Given I am on the ‘add-transportation-details-plane’ page
#And I don’t have javascript enabled
#And I have entered valid data in all mandatory fields
#When I elect to ‘Save as draft’
#Then the latest details I specified on this page are saved
#And I am navigated to the CC dashboard page
#
#Scenario: 5 Validate the Save as draft button - Invalid data
#Given I am on the ‘add-transportation-details-plane’ page
#And I don’t have javascript enabled
#And I have entered invalid data in a field or not entered any data in a field
#When I click ‘Save as draft’
#Then the latest data entered on those fields are NOT saved
#And I am navigated to the CC dashboard page
#
#Scenario: 6 Validate the Welsh translation of errors
#Given I am on the ‘add-transportation-details-plane’ page
#And I don’t have javascript enabled
#When I have selected Welsh translation
#Then error(s) will be displayed on the page in Welsh
#And I will remain on the add-transportation-details-plane page
#
#
#@FI0-5106
#Scenario: 1 Validate that the /add-transportation-details-train page is rendered correctly
#Given I have navigated to the add-transportation-details page of my CC application
#And I do not have javascript enabled
#When I select the transport option of train
#And i click on ‘Save and Continue’ button
#Then the page will be rendered correctly
#And all the content of the page will be displayed appropriately
#
#Scenario: 2 Validate the valid information in the editable input fields are saved successfully
#Given I have navigated the add-transportation-details-train page of my CC application
#And I do not have javascript enabled
#When I enter valid information in the below field
##Railway bill number (letters, numbers)
##Place export leaves the UK (letters, numbers, apostrophes, and hyphens)
#And I click on the ‘Save and Continue’ button
#Then the input details should be saved successfully
#
#Scenario: 3 Validate that the Hyperlinks (Back Link) redirects to the appropriate pages
#Given I have navigated the add-transportation-details-train page of my CC application
#And I do not have javascript enabled
#When I click on the ‘Back’ link on the page
#Then I will be navigated to the previous page of the journey (how-does-the-export-leave-the-uk)
##Back to your progress - Navigates the user to page ‘progress’
##Back - Navigates the user to the previous page of the journey (how-does-the-export-leave-the-uk)
#
#Scenario: 4 Validate that the Hyperlinks (Back to Your Progress) redirects to the appropriate pages
#Given I have navigated the add-transportation-details-train page of my CC application
#And I do not have javascript enabled
#When I click on the ‘Back to Your Progress’ link on the page
#Then I will be navigated to the Your Progress page (/progress)
#
#Scenario: 5 Validate that the page is translated to Welsh when user clicks on ‘Welsh’ toggle
#Given I am on the add-transportation-details-train page of my CC application
#And I do not have javascript enabled
#When I click on the Welsh translation toggle
#Then the page will be translated into Welsh
#
#
#@FI0-5108:
#Scenario: 1 Validate the add-transportation-details-container-vessel page
#Given I have navigated to the add-transportation-details-container-vessel page of my CC application
#And I do not have javascript enabled
#Then the page will be displayed in a proper format
#
#Scenario: 2 Validate that all fields should be Editable and valid input should be saved successfully on the add-transportation-details-container-vessel
#Given I have navigated the add-transportation-details-container-vessel page of my CC application
#And I do not have javascript enabled
#When the page is rendered
#Then the Vessel name, Flag state, Container identification number or numbers and Place export leaves the UK fields are editable
#
#Scenario: 3 Validate the Hyperlinks, it should be redirects to the appropriate pages
#Given I have navigated the add-transportation-details-container-vessel page of my CC application
#And I do not have javascript enabled
#When I land on the page
#Then the following hyperlinks will be active:
##Back to your progress -  Navigates the user to page ‘progress’
##Back - Navigates the user to the previous page of the journey (how-does-the-export-leave-the-UK)
#
#Scenario: 4 Validate the page content for the Welsh translation
#Given I am on the add-transportation-details-container-vessel page of my CC application
#And I do not have javascript enabled
#When I select Welsh translation
#Then the page will be translated into Welsh
#
#Scenario: 5 Validate the page title in welsh and English language selection
#Given I have navigated the add-transportation-details-container-vessel page of my CC application
#And I do not have javascript enabled
#When I land on the page and inspect the page and checking page title
#Then it should be display in selected language(Welsh/English)
#
#@FI0-5109:
#Scenario: 1 Validate the input and saving of valid data using ‘Save and Continue’ Button
#Given I am on the ‘add-transportation-details-train’ page
#And I don’t have javascript enabled
#And I have entered all mandatory fields with valid data
#When I elect to ‘Save and continue’
#Then data specified on the page will be saved
#And I will be navigated to the ‘progress’ page
#
#Scenario: 2 Validate that error messages are displayed when mandatory fields are left blank - No data entered
#Given I am on the ‘add-transportation-details-train’ page
#And I don’t have javascript enabled
#And I have not entered data in mandatory fields
#When I elect to ‘Save and continue’
#Then I will get the following error at the top of the page
##Enter the railway bill number
##Enter the place the export leaves the UK
#And the same messages will appear above the relevant fields
#And I will remain on the 'add-transportation-details-train' page
#And selecting one of the messages will take me to the relevant field
#
#Scenario: 3 Validate that error messages are displayed when invalid data is entered in the mandatory - Invalid data entered
#Given I am on the ‘add-transportation-details-train’ page
#And I don’t have javascript enabled
#And I have entered invalid data in any of the fields (Special characters e.g &*^%$()”)
#When I elect to ‘Save and continue’
#Then I will get the following error at the top of the page
##Railway bill number must only contain letters, numbers
##Place the export leaves the uk must only contain letters, numbers, apostrophes, and hyphens
#And the same messages will appear above the relevant fields
#And selecting one of the messages will take me to the relevant field
#And I will remain on the 'add-transportation-details-train' page
#
#Scenario: 4 Validate the input and saving of valid data using ‘Save as Draft’ Button
#Given I am on the ‘add-transportation-details-train’ page
#And I don’t have javascript enabled
#And I have entered valid data in all mandatory fields
#When I elect to ‘Save as draft’
#Then the latest details I specified on this page are saved
#And I am navigated to the CC dashboard page
#
#Scenario: 5 Validate the input and NON saving of invalid data using ‘Save as Draft’ Button - Invalid data or missing data
#Given I am on the ‘add-transportation-details-train’ page
#And I don’t have javascript enabled
#And I have entered invalid data in a field or not entered any data in a field
#When I click ‘Save as draft’
#Then the latest data entered on those fields are NOT saved
#And I am navigated to the CC dashboard page
#
#Scenario: 6 Validate the display of error messages in Welsh
#Given I am on the ‘add-transportation-details-train’ page
#And I don’t have javascript enabled
#And I have generated error messages in either leaving fields blank or entering invalid data
#When I select Welsh translation
#Then the error island and inline error messages will be displayed on the page in Welsh
#And I will remain on the add-transportation-details-train page
#
#
#@FI0-5110:
#Scenario: 1 Validate the input fields are saving of valid data by using ‘Save and Continue’ Button
#Given I am on the ‘add-transportation-details-container-vessel’ page
#And I don’t have javascript enabled
#And I have entered all mandatory fields with valid data
#When I elect to ‘Save and continue’
#Then data specified on the page will be saved
#And I will be navigated to the ‘progress’  page
#
#Scenario: 2 Validate the Save and Continue button -for blank submission/ No data entered
#Given I am on the ‘add-transportation-details-container-vessel’ page
#And I don’t have javascript enabled
#And I have not entered data in mandatory fields
#When I elect to ‘Save and continue’
#Then I will get the following error at the top of the page
##Enter the vessel name
##Enter the flag state
##Enter the container identification number or numbers
##Enter the place the export leaves the UK
#And the same messages will appear above the relevant fields
#And I will remain on the 'add-transportation-details-container-vessel' page
#
#Scenario: 3 Validate the Save and Continue button  for  Invalid data entered/input
#Given I am on the ‘add-transportation-details-container-vessel’ page
#And I don’t have javascript enabled
#And I have entered invalid data in the ‘Vessel name’, ‘Container number’ or ‘Place the export leaves the UK’ fields
#When I elect to ‘Save and continue’
#Then I will get the following error at the top of the page:
##Vessel name must only contain letters, numbers, apostrophes, hyphens, and brackets
##Container number must only contain letters, numbers
##Place the export leaves the uk must only contain letters, numbers, apostrophes, and hyphens
#And the same messages will appear above the relevant fields
#And if I select any of the messages above will take me to the corresponding field
#And I will remain on the 'add-transportation-details-container-vessel' page
#
#Scenario: 4 Validate that all field should be saved valid data using Save as draft button
#Given I am on the ‘add-transportation-details-container-vessel’ page
#And I don’t have javascript enabled
#And I have entered valid data in all mandatory fields
#When I elect to ‘Save as draft’
#Then the latest details I specified on this page are saved
#And I am navigated to the CC dashboard page
#
#Scenario: 5 Validate the Save as draft button for Invalid data or missing data
#Given I am on the ‘add-transportation-details-container-vessel’ page
#And I don’t have javascript enabled
#And I have entered invalid data in a field or not entered any data in a field
#When I click ‘Save as draft’
#Then the latest data entered on those fields are NOT saved
#And I am navigated to the CC dashboard page
#
#Scenario: 6 Validate errors messages content in Welsh
#Given I am on the ‘add-transportation-details-container-vessel’ page
#And I don’t have javascript enabled
#When I have selected the Welsh translation
#Then error(s) will be displayed on the page in Welsh
#And I will remain on the add-transportation-details-train page
#
#Scenario: 7 Validate the page title for Welsh and English language selection
#Given I am on the ‘add-transportation-details-container-vessel’ page
#And I don’t have javascript enabled
#And I inspect the page and checked page title
#Then page title should be in the selected language
#
#@FI0-5088
#Scenario: 1 Validate the save & continue button for truck on the “how-does-the-export-leave-the-uk”
#Given I am on the ‘how-does-the-export-leave-the-uk’ page
#And I don’t have javascript enabled
#And I have selected ‘Truck'
#When I elect to ‘Save and continue’
#Then data specified on the page will be saved
#And I will be navigated to the ‘do-you-have-a-road-transport-document’  page
#
#Scenario: 2 Save and Continue button - selecting plane
#Given I am on the ‘how-does-the-export-leave-the-uk’ page
#And I don’t have javascript enabled
#And I have selected ‘Plane’
#When I elect to ‘Save and continue’
#Then data specified on the page will be saved
#And I will be navigated to the ‘add-transportation-details-plane’  page
#
#Scenario: 3 Save and Continue button - selecting train
#Given I am on the ‘how-does-the-export-leave-the-uk’ page
#And I don’t have javascript enabled
#And I have selected ‘Train’
#When I elect to ‘Save and continue’
#Then data specified on the page will be saved
#And I will be navigated to the ‘add-transportation-details-train’  page
#
#Scenario: 4 Save and Continue button - selecting container vessel
#Given I am on the ‘how-does-the-export-leave-the-uk’ page
#And I don’t have javascript enabled
#And I have selected ‘Container vessel’
#When I elect to ‘Save and continue’
#Then data specified on the page will be saved
#And I will be navigated to the ‘add-transportation-details-container vessel’  page
#
#Scenario : 2 Validate the save & continue button for blank selection and validate the error content
#Given I am on the ‘how-does-the-export-leave-the-uk’ page
#And I don’t have javascript enabled
#And I have not selected an option
#When I elect to ‘Save and continue’
#Then I will get the following error at the top of the page "Select how the export leaves the UK"
#And the same message will appear above the option set (see screenshot below)
#And I will remain on the 'how-does-the-export-leave-the-uk' page
#
#Scenario: 3 Validate the save as draft button and check details should be saved and the user navigate to the dashboard page
#Given I am on the ‘how-does-the-export-leave-the-uk’ page
#And I don’t have javascript enabled
#When I click ‘Save as draft’
#Then the latest details I specified on this page are saved
#And I am navigated to the CC dashboard page
#Scenario 4: Validate the error content for the welsh language at the top of the page and above the option set
#Given I am on the ‘how-does-the-export-leave-the-uk’ page
#And I don’t have javascript enabled
#When I have selected Welsh translation
#Then error(s) will be displayed on the page in Welsh
#And I will remain on the how-does-the-export-leave-the-uk page
#
#@FI0-5072
#Scenario: 1 Find Address - happy path
#Given I am on the ‘what exporter address’ page
#And I don’t have javascript enabled
#And I have entered a valid postcode
#When I click on ‘Find address’
#Then a list of valid address that match the postcode are able to be selected
#
#Scenario: 2 Find Address - unhappy path - no address entered
#Given I am on the ‘What exporter address’ page
#And I don’t have javascript enabled
#And I have not entered a valid postcode
#When I click on ‘Find address’
#Then I am displayed the error at the top of the page
#And ‘No addresses found’ is shown in the address field
#And I will remain on the What exporter address page
#
#Scenario: 4 Find Address - valid address entered but does not exist
#Given I am on the ‘What exporter address’ page
#And I don’t have javascript enabled
#And I have entered an valid postcode but it does not exist
#When I click on ‘Find address’
#Then I am returned ‘No addresses found’ in the address field
#
#Scenario: 5 Validate the Cancel Button
#Given I am on the ‘What exporter address’ page
#And I don’t have javascript enabled
#When I click on ‘Cancel’
#Then I am navigated to the add-exporter-details page
#
#Scenario: 6 Verify the Continue button - Unhappy path
#Given I am on the ‘What exporter address’ page
#And I don’t have javascript enabled
#And I have selected an address
#When I click on ‘Continue’
#Then the field pages appear filled in with the address that was selected
#
#Scenario: 7 Validate the Continue button - Unhappy path
#Given I am on the ‘What exporter address’ page
#And I don’t have javascript enabled
#And I have not selected an address
#When I click on ‘Continue’
#Then I see the following error at the top of the page:"Enter a postcode" and "Postcode must be between 5 and 8 characters, and contain only letters, numbers, spaces, hyphens and commas"
#And the same error will appear above the address selection
#And I remain on the ‘What exporter address’ page
#
#Scenario: 8 Welsh translation of errors
#Given I am on the ‘What exporter address’ page
#And I don’t have javascript enabled
#And I have selected Welsh translation
#When errors are displayed
#Then error(s) will be displayed on the page in Welsh
#
#@FI0-5074
#Scenario: 1 Selecting Continue button - Happy Path
#Given I am on the ‘what exporter address’ page (2nd stage after either selecting an address or electing to enter an address manually)
#And I don’t have javascript enabled
#And I have entered valid data in all mandatory fields
#When I select ‘Continue’
#Then the address I have selected/entered is saved
#And I am directed to the add-exporter-details page
#And the saved address is displayed in the ‘Address’ section
#
#Scenario: 2 Selecting Continue button - No details entered
#Given I am on the ‘what exporter address’ page (2nd stage after either selecting an address or electing to enter an address manually)
#And I don’t have javascript enabled
#And I have not entered valid data in ‘Town or city', ‘Postcode’ or ’Country'
#When I select ‘Continue’
#Then I am shown the following error(s) at the top of the page for each field missing:
##Enter the town or city
##Enter a postcode
##Select a country from the list
#And the same error(s) will be above the respective missing fields
#And I remain on the what-exporter-address page
#
#Scenario: 4 entering a country in the country field
#Given I am on the ‘what exporter address’ page (2nd stage after either selecting an address or electing to enter an address manually)
#And I don’t have javascript enabled
#When I select the country field
#Then I can select a country from the list
#
#Scenario: 5 Invalid data entered in fields (everything but building number)
#Given I am on the ‘what exporter address’ page (2nd stage after either selecting an address or electing to enter an address manually)
#And I don’t have javascript enabled
#And I have entered invalid data in ‘sub-buiding name', Buiding name', ‘Street name’, ‘Town or City’, Country/state/province’ or ‘Postcode’
#When I select ‘Continue’
#Then I am shown the following error(s) at the top of the page:
##SubBuilding name must only contain letters, numbers, apostrophes, hyphens, periods, commas, spaces, ampersands, exclamation marks and forward slashes
##Building number must contain only letters, numbers, spaces, hyphens and commas
##Building name must only contain letters, numbers, apostrophes, hyphens, periods, commas, spaces, ampersands, exclamation marks and forward slashes
##Town or City name must only contain letters, numbers, apostrophes, hyphens, periods, commas, spaces, ampersands, exclamation marks and forward slashes
##County name must only contain letters, numbers, apostrophes, hyphens, periods, commas, spaces, ampersands, exclamation marks and forward slashes
##Postcode must be between 5 and 8 characters, and contain only letters, numbers, spaces, hyphens and commas
#And the same error(s) will be above the respective invalid fields
#And I remain on the what-exporter-address page
#
#Scenario: 6 Invalid data entered in fields (building number)
#Given I am on the ‘what exporter address’ page (2nd stage after either selecting an address or electing to enter an address manually)
#And I don’t have javascript enabled
#And I have entered invalid data in 'Building number'
#When I select ‘Continue’
#Then I am shown the following error at the top of the page:
##Building number must contain only letters, numbers, spaces, hyphens and commas
#And the same error will be above the 'Building number field
#And I remain on the what-exporter-address page
#
#Scenario: 7 Verify content Welsh translation
#Given I am on the ‘What exporter address’ page
#And I don’t have javascript enabled
#And I have selected Welsh translation
#When errors are displayed
#Then error(s) will be displayed on the page in Welsh
#
#@FI0-4837
#Scenario: 1 Save and Continue button - happy path
#Given I am on the ""what-export-journey"" page
#And I click 'Save and Continue' button I don't have javascript enabled
#When validation passes
#Then data is saved I navigate to next page"
#
#Scenario: 2Save and Continue button - unhappy path/errors displayed
#Given I am on the "what-export-journey" page
#And I click 'Save and Continue' button I don't have javascript enabled
#When validation fails
#Then error messages are displayed on the page in English
#And I remain on  ‘what-export-journey’  page"
#
#Scenario: 3Save of draft button
#Given I am on the ""what-export-journey"" page
#When I click 'Save of draft' button I don't have javascript enabled
#And latest details I specified on this page are saved
#Then I navigate to the CC dashboard page
#
#Scenario: 4 Welsh translation of errors
#Given I am on the ""what-export-journey"" page
#And I click 'Save and Continue' button I don't have javascript enabled
#When validation fails
#Then error messages are displayed on page in Welsh
#And I remain on  ‘what-export-journey’  page
#
#@FI0-4834
#Scenario : 1 Verify that page 'whose were they caught' is displayed when javascript is not enabled
#Given I am on the CC journey
#And I don’t have JavaScript enable
#When I am on the whose were they caught in page
#And select any option UK or EU or OTHER
#Then I click on save and continue
#And user navigates to what exporter journey page
#
#Scenario: 2 Validate the 'whose were they caught' page click on the save and continue
#Given I am on the CC journey
#And I don’t have JavaScript enable
#When I am on the whose were they caught in page
#And can’t select any option UK or EU or OTHER
#Then I click on save and continue
#And errors will be displayed on the page
#
#Scenario: 3 Validate the 'whose were they caught' page click on the save and draft
#Given I am on the CC journey
#And I don’t have JavaScript enable
#When I am on the whose were they caught in page
#And select any option UK or EU or OTHER
#Then I click on save draft
#And user navigates to dashboard page
#
#Scenario: 4 Validate the 'whose were they caught' page click on the Walsh Language
#Given I am on the CC journey
#And I don’t have JavaScript enable
#When I am on the whose were they caught in page
#And by default, English language will be displayed
#Then I click on Walsh language
#And page will be displayed on the Walsh
#
#
#@FI0-4832
#Scenario1: Validate whose-waters-were-they-caught-in page
#Given I am on the progress of CC application journey
#And I do not have JavaScript enabled
#And I have selected direct landing or manual landing entry or CSV file option
#When I select catch water link in progress page
#Then I navigate whose-waters-were-they-caught-in page.
#
#Scenario2: Validate the edit fields in whose-waters-were-they-caught-in page
#Given I have navigated the whose-waters-were-they-caught-in page of my CC application
#And I do not have JavaScript enabled
#When I select UK, British Isles field
#And I click on save and continue
#Then user navigates to the "what export journey" page
#And I return back whose-waters-were-they-caught-in page using back link
#Then I already selected field is in editable mode
#When I select EU, field
#And I click on save and continue
#Then user navigates to the "what export journey" page
#And I return back whose-waters-were-they-caught-in page using back link
#Then I previously selected field is retained
#When I enter a data in Whose waters
#And return back whose-waters-were-they-caught-in page using back link
#Then I previously selected field is retained
#
#Scenario3: Validate back to progress link in whose-waters-were-they-caught-in page
#Given I have navigated to the whose-waters-were-they-caught-in page of my CC application
#And I do not have JavaScript enabled
#When I click on the  Back to your progress page link
#Then user Navigates to the ‘progress’ page
#
#
#
#@FI0-4813
#Scenario: 1 Validate the save& continue button on the add exporters details page
#  When land on the add exporters details page and fill in all the details
#  And I do not have JS enabled
#  And click on the save and continue button and validation is passed
#  Then the user should be able to navigate to the next page I n the CC journey
#
#Scenario: 2Validate the save& continue button on the add exporters details page for invalid and blank input
# When land on the add exporters details page and keep all field details blank/invalid
# And I do not have JS enabled
# And click on the save and continue button and validation is failed
# Then the user should be able to see all the error content in English
# And users should remain on the same page
#
#Scenario: 3Validate the save as draft button on the add exporters details page
# I do not have JS enabled
# When land on the add exporters details page and fill in all the details
# And click on the save as draft button
# Then the user should be able to save all the details and navigate back to the CC journey dashboard
#
#Scenario: 4 Validate the welsh translation for error content
#Given I have navigated to the /what-exporters-address page of my CC application
#When land on the add exporters details page and keep all field details blank
#And I do not have JS enabled
#And click on the save and continue button and validation is failed
#Then the user should be able to see all the error content in Welsh
#And the user should remain on the same page
#
#Scenario: 5 Validate the page content by resuming the journey
#Given I have navigated to the /what-exporters-address page of my CC application
#And I do not have JS enabled
#When land on the add exporters details page and fill in all the details
#And click on the save as draft and log off
#And again log in to that journey and check the previously saved data status
#
#@FI0-5073
#Scenario: 1 Validate the exporter address page in the second stage for manual entry
#Given I have navigated to the /what-exporters-address page of my CC application
#And I do not have javascript enabled
#When I select to enter the address manually
#Then the page will be in the proper format
#And all the fields will be empty
#
#Scenario: 2 Validate the What exporter address page (2nd stage) when selecting an address from the list
#Given I have navigated to the /what-exporters-address page of my CC application
#And I do not have javascript enabled
#When I select an address from a list
#Then the  ‘What-Exporter Address ’page displays that the mandatory field is filled or
#And the relevant fields will be populated with the address that I previously selected
#
#Scenario: 3 Validate that all the fields should be Editable  on the exporter address page
#Given I have navigated the /what-exporters-address page of my CC application
#And I do not have javascript enabled
#And I have either selected to enter the address manually or select an address from a list
#When the page is rendered
#Then the   Sub-building name, building number, Building name, Street name, Town or city
##County/state/province, Postcode, and Country fields will be editable
#
#Scenario: 4 Validate the Welsh translation for all page content
#Given I am on the /what-exporter-address page of my CC application
#And I do not have javascript enabled
#When I have elected Welsh translation
#Then the page will be translated into Welsh
#
#@FI0-5086
#Scenario: 1 Validate the how-does-the-export-leave-the-UK page UI content
#Given I have navigated to the how-does-the-export-leave-the-uk page of my CC application
#And I do not have javascript enabled
#Then the page will be rendered in a proper format
#
#Scenario:   all options fields should be editable
#Given I have navigated the how-does-the-export-leave-the-UK page of my CC application
#And I do not have javascript enabled
#When the page is rendered
#Then I can select one of the following options -Truck, Plane, Train, Container Vessel
#
#Scenario: 3 Validate the Hyperlinks on the how-does-the-export-leave-the-UK page
#Given I have navigated the how-does-the-export-leave-the-uk page of my CC application
#And I do not have javascript enabled
#When the page is rendered
#Then the following hyperlinks will be active:
##Back to your progress -  Navigates the user to page ‘progress’
##Back - Navigates the user to the previous page of the journey (what-export-journey)
#
#Scenario: 4 Validate the language content for the Welsh translation
#Given I am on the how-does-the-export-leave-the-uk page of my CC application
#And I do not have javascript enabled
#When I select Welsh translation
#Then the page will be translated into Welsh
#
#Scenario: 5 Validate the page title for welsh and English
#Given I am on the how-does-the-export-leave-the-uk page of my CC application
#And I do not have javascript enabled
#When I select Welsh/English translation
#And inspect the page and check the page title
#Then page title should be consistent with other environments
#
#@FI0-5070
#Scenario: 1 Verify that page 'What exporters address' is displayed  when javascript is not enabled
#Given I logged in to the application
#When I have navigated to What exporters address page
#And I do not have javascript enabled
#Then I verify all the content is displayed
#
#Scenario: 2 Verify the field 'Enter your postcode' is editable in 'What exporters address' when javascript is not enabled
#Given I logged in to the application
#And I have navigated to What exporters address page
#And I do not have javascript enabled
#When I Enter the postcode in 'Enter your Postcode' field
#Then Postcode is entered and displayed in the field
#
#Scenario: 3 Verify clicking on link 'Enter Address Manually' in 'What exporters address' navigates to Manual entry page when javascript is not enabled
#Given I logged in to the application
#And I have navigated to What exporters address page
#And I do not have javascript enabled
#When I click on Enter Address Manually
#Then system navigates to Manual entry page
#
#Scenario: 4 Verify clicking on link 'Back to your Progress' in 'What exporters address' navigates to Progress page when javascript is not enabled
#Given I logged in to the application
#And I have navigated to What exporters address page
#And I do not have javascript enabled
#When I click on 'Back to your Progress' Link
#Then system navigates to Progress page
#
#Scenario: 5 Verify clicking on link 'I can not find the address' in 'What exporters address' navigates to Manual entry page when javascript is not enabled
#Given I logged in to the application
#When I have navigated to What exporters address page
#And I do not have javascript enabled
#And I enter postcode- and click on Continue
#And I click on link 'I can not find the address'
#Then system naviagates to Manual entry page
#
#Scenario: 6 Verify clicking on Change button in 'What exporters address' removes the address when javascript is not enabled
#Given I logged in to the application
#When I have navigated to What exporters address page
#And I do not have javascript enabled
#And I enter postcode- and click on Continue
#And I click on Change button
#Then system removes the address list and remains in the 'What exporters address' page
#
#Scenario: 7 Verify clicking on Welsh link in 'What exporters address' changes the page to Welsh when javascript is not enabled
#Given I logged in to the application
#And I have navigated to What exporters address page
#And I do not have javascript enabled
#When I Click on Welsh toggle link
#Then the 'What exporters address' page is translated to Welsh
#
#Scenario: 8 Verify clicking on Welsh link in 'What exporters address' with address list on the page changes the page to Welsh when javascript is not enabled
#Given I logged in to the application
#And I have navigated to What exporters address page
#And I do not have javascript enabled
#When I enter the Postcode and click on Continue
#And I Click on Welsh toggle link
#Then the 'What exporters address' page is translated to Welsh
#
#
#Scenario: 1 Validate top half the product /what-are-you-exporting page when disable the java script
#Given I opt to navigate to the /what-are-you-exporting page of my CC application
#And I don’t have javascript enabled
#When this page loads
#Then the top half of the page will be rendered with
##Add products
##Add products from favourites
#When I click on  ‘I cannot find the species'
#Then ‘I cannot find the species' should be expanded.
#
#Scenario: 2Verify product details on top half of  /what-are-you-exporting page when disable the java script.
#Given I have navigated the /what-are-you-exporting of my CC application
#And I do not have javascript enabled
#When the page is rendered
#Then I can Validate
##Common name or FAO code  drop-down,
##State drop-down,
##Presentation drop-down
##Commodity Code  drop-down
##Product drop-down displayed properly.
#When I Check the checkbox ‘Add to Product Favourite’
#Then Check box is selected.
#
#Scenario: 3Verify links /what-are-you-exporting page of my CC application when disable the java script
#Given I opt to navigate to the /what-are-you-exporting page of my CC application
#And I do not have javascript enabled
#And the page is rendered
#When I click on ‘Back’ link
#Then Page Navigates user to the last page in the journey
#When click on ‘Species exempt from Catch Certificates (europa.eu)'
#Then Page should be open in  a new tab
#When click on 'Manage your product favourites' link
#Then Page navigates 'Manage your product favourites' Page
#
#Scenario: 4 Validate welsh translation on the /what-are-you-exporting page on CC application
#Given I am on the /what-are-you-exporting page of my CC application
#And I do not have javascript enabled
#When  I select welsh
#Then page content on the top of the page will be translated into
#
#@FI0-4894
#Scenario: 1 Verify the What are you exporting page contains tabs Add products, Add products from favourites
#Given I logged in to the application
#And I have navigated to what-are-you-exporting page in CC journey
#And I have javascript enabled
#Then the page contains tabs Add Products and Add products from Favourites
#When I click on tab 'Add products from Favourites'
#Then page contains Product text box and ‘Manage your product favourites’ link
#When I click on tab 'Add Products'
#Then the page contains fields 'Common name or FAO code', 'State', 'Presentation', 'Commodity Code', 'Add to product favourites' checkbox
#
#Scenario: 2 Verify the notification message in ‘What are you exporting’ page
#Given I logged in to the application
#And I have navigated to what-are-you-exporting page in CC journey
#And I have javascript enabled
#Then the page contains notification Please Note with contents
#When I expand the link ‘I cannot find the species’ link
#Then page starts with ‘For best results.. ‘ and  contains link ‘Species exempt from Catch Certificates (europa.eu)'
#When I expand the link ‘ I cannot find the commodity code’
#Then page contains ‘call 0330 159 1989 if the commodity code you need is not shown’
#
#Scenario: 3 Verify the hyperlinks in the What are you exporting page
#Given I logged in to the application
#And I have navigated to what-are-you-exporting page in CC journey
#And I have javascript enabled
#When I click on back link
#Then the system navigates to ‘Add exporters details’ page
#When I have navigated to what-are-you-exporting page in CC journey
#And expand the ‘I cannot find the commodity code’ link
#And I click on ‘Species exempt from Catch Certificates (europa.eu)' link
#Then The pdf  'https://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=OJ:L:2011:057:0010:0018:EN:PDF' opens in new tab
#When I have navigated to what-are-you-exporting page in CC journey
#And click on Add products from favourite tab
#And click on Manage your product favourites link
#Then System navigates to Manage-favourite page
#
#Scenario: 4 Verify that what are you exporting page translates to Welsh
#Given I logged in to the application
#And I have navigated to what-are-you-exporting page in CC journey
#And I have javascript enabled
#When I click on Welsh toggle
#Then the page is translated to Welsh
#
#@FI0-5006
#Scenario: 1 Validate bottom half of  /what-are-you-exporting page of my CC application when disable javascript
#Given I opt to navigate to the /what-are-you-exporting page of my CC application
#And I don’t have javascript enabled
#When this page loads
#Then the bottom half of this page will be rendered
##Your products table (including ‘edit’ and ‘remove’ button)
##Save and Continue button
##Save as draft button
##Back to your progress link.
#
#Scenario: 2 Validate Hyper links bottom half of /what-are-you-exporting page of my CC application when disable javascript.
#Given I opt to navigate to the /what-are-you-exporting page of my CC application
#And I do not have javascript enabled
#And  the page is rendered
#When click on ‘Back to your progress' link
#Then Page  Navigates user to /progress page
#
#Scenario: 3 Validate welsh translation in bottom half of /what-are-you-exporting page of my CC application when disable javascript.
#Given I am on the /what-are-you-exporting page of my CC application
#And I do not have javascript enabled
#When I select welsh
#Then the content on the bottom of the page will be translated into Welsh
#
#@FI0-5010
#Scenario: 1 Verify the What are you exporting page contains Product details
#Given I logged in to the application
#And I have navigated to what-are-you-exporting page in CC journey
#And I have javascript enabled
#Then the bottom of the page contains Product table
#When I verify Product table
#Then page contains Edit and Remove button in Your Products table, Save and Continue button, Save as draft and Back to your Progress link
#
#Scenario: 2 Verify that Back to your progress link navigates to Progress page
#Given I logged in to the application
#And I have navigated to what-are-you-exporting page in CC journey
#And I have javascript enabled
#When I click on Back to your progress link
#Then page navigates to Progress page
#
#Scenario: 3 Verify the contents of Product table in what are you exporting page translates to Welsh
#Given I logged in to the application
#And I have navigated to what-are-you-exporting page in CC journey
#And I have javascript enabled
#And I click on Welsh toggle
#Then I verify the product table in the page is translated to Welsh
