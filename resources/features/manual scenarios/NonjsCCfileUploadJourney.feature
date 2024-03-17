#Feature: Creating scenarios for creating CC using CSV file upload option when javascript is disabled
#  As an Exporter,
#  I want to be able to select the CSV file option while creating a CC when JS is disabled
#  So that i can create a CC document
#
#  @FI0-5039
#Scenario 1: Save and Continue button - happy path
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a valid file
#When I select ‘Save and Continue’
#Then I will be navigated to the ‘what-are-you-exporting’ page
#And the products I uploaded will appear in the Your products section
#
#Scenario 2: Save and Continue button - unhappy path/errors displayed
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have clicked on ‘Save and Continue’
#And the existing validation has run
#When the validation fails
#Then error(s) will be displayed on the page in English
#And I will remain on the  ‘upload-file’  page
#
#Scenario 3: Cancel button
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#When I select ‘Cancel’
#Then the uploaded data is removed
#And I am navigated to the add-exporter-details page
#
#Scenario 4: Welsh translation of errors
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have selected ‘Save and Continue’
#And the existing validation has run
#When the validation fails
#Then error(s) will be displayed on the page in Welsh
#And I will remain on the  ‘upload-file’  page
#
#
#@FI0-5042
#Scenario 1: More than 100 records
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When the file contains more than 100 records
#Then the error message will be displayed at the top of the page
#
#Scenario 2: File too large
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When the file size is 10k or more
#Then the error message will be displayed at the top of the page
#
#Scenario 3: Wrong file type
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When the file is not of type CSV
#Then the error message will be displayed at the top of the page
#
#Scenario 4: File is Empty
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When the file is empty
#Then the error message will be displayed at the top of the page
#
#Scenario 5: Welsh translation of errors
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And the existing upload validation has run
#And I have selected Welsh translation
#When the validation fails
#Then error(s) will be displayed on the page in Welsh
#
#
#@FI0-5043
#Scenario 1: Failure during AV scan
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When there is a failure during the AV scan
#Then the error message will be displayed at the top of the page
#
#Scenario 2: Error when file has incorrect comma delimiters
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When the file when contains the wrong number of comma delimiters (4)
#Then the error message will be displayed at the top of the pag
#
#Scenario 3: Welsh translation of errors
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And the existing upload validation has run
#And I have selected Welsh translation
#When the validation fails
#Then error(s) will be displayed on the page in Welsh
#
#
#@FI0-5045
#Scenario 1: Missing product ID
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When a landing is missing a Product ID
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 2: Product ID is not in the favourites list
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have to uploaded a file
#When a landing has a Product ID that is not in my favourites list
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 3: Product ID no longer valid
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When a Product in a landing no longer has a valid product combination
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 4: Welsh translation of errors
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And the existing validation has run
#And I have selected Welsh translation
#When the validation fails
#Then error(s) will be displayed on the page in Welsh
#
#
#@FI0-5047
#Scenario 1: Missing Date Landed
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When a landing is missing Date Landed
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 2: Invalid date landed
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have to uploaded a file
#When a landing has an invalid date landed
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 3: Date landed is too far in the future
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When a Date landed is too far in the future (more than 7 days)
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 4: Fishing restrictions
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When there is a product and landing where fishing restrictions do apply on the specified date landed
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 5: Welsh translation of errors
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And the existing validation has run
#And I have selected Welsh translation
#When the validation fails
#Then error(s) will be displayed on the page in Welsh
#
#
#@FI0-5049
#Scenario 1: Missing catch area
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When a landing is missing a Catch area
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 2: Invalid catch area
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have to uploaded a file
#When a landing has an invalid catch area
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 3: Welsh translation of errors
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And the existing validation has run
#And I have selected Welsh translation
#When the validation fails
#Then error(s) will be displayed on the page in Welsh
#
#
#@FI0-5050
#Scenario 1: Missing export weight
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When a landing is missing an export weight
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 2: Invalid export weight
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have to uploaded a file
#When a landing has an invalid export weight
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 3: Welsh translation of errors
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And the existing validation has run
#And I have selected Welsh translation
#When the validation fails
#Then error(s) will be displayed on the page in Welsh
#
#
#@FI0-5051
#Scenario 1: Missing vessel PLN
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a file
#When a landing is missing a vessel PLN
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 2: unlicensed vessel
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have to uploaded a file
#When a landing has an unlicensed vessel PLN
#Then the error message will be displayed in the results column of that product
#And the product and message will be highlighted in red
#
#Scenario 3: Welsh translation of errors
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And the existing validation has run
#And I have selected Welsh translation
#When the validation fails
#Then error(s) will be displayed on the page in Welsh
#
#
#@FI0-5052
#Scenario 1: Clear the upload button
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And I have uploaded a valid file
#When I select ‘Clear the upload’
#Then any unsaved product & landing information will be removed from the /upload-file page
#And the chosen file will be removed
#
#
#@FI0-5103
#Scenario 1: Add date button for non-JS users only
#Given I am on the /direct-landing page of my CC application
#And I have Javascript disabled
#And I have specified the date landed
#When I click on ‘Add date'
#Then any vessel names and PLNs matching the date landed are now displayed
#
#
#@FI0-5123
#Scenario 1: Save and continue button - Happy Path
#Given I am on the /add-landings page of my CC application
#And each of the product(s) saved to the application has at least 1 landing already saved against it
#When I click on ‘Save and Continue’
#And validation runs
#And validation passes
#Then I am navigated t the /whose-waters-were-they-caught-in page
#
#@FI0-5036
#Scenario 1: Select the Browse Button
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#When i select the ‘Browse…’ button
#Then a navigation window opens
#And I can navigate to a location on my computer or network
#And I can select a file
#
#Scenario 2: Selecting a file
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And i have selected the ‘Browse…’ button
#When I select the ‘Upload File’ button
#Then the text to the right of the ‘Browse…’ button will change to ‘Upload File
#
#Scenario 3: Selecting a file
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#And i have selected the ‘Browse…’ button
#And I have selected the ‘Upload File’ button
#When the file passes all validation
#Then an information message at the top of the page will appear
#
#Scenario 4: Welsh translation of Messages
#Given I am on the ‘upload-file’ page
#And I don’t have javascript enabled
#When I have selected Welsh translation
#Then the messages will be displayed on the page in Welsh
#
#
#@FI0-5192
#Scenario 1: Rendering the page
#Given I have navigated to the /upload-guidance page of my CC application
#And I don’t have javascript enabled
#When the page is rendered
#Then it appears as upload-guidance page
#
#Scenario 2: Hyperlinks
#Given I have navigated to the /upload-guidance page of my CC application
#And I don’t have javascript enabled
#When I click on the Back link
#Then I am navigated to the Navigates user to the /upload-file page
#When I click on the Back your progress link
#Then I am navigated to the Navigates user to the /manage-favourites page
#
#Scenario 3: Welsh translation
#Given I am on the /upload-guidance page of my CC application
#And I do not have javascript enabled
#When I select Welsh translation
#Then the page will be translated into Welsh