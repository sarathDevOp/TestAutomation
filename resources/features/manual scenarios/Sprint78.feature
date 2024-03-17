#FI0-3887-Performance improvement - update how file uploads are validated
# Scenario:1validate csv file upload result timing on upload page
#   Given I am on File Uploading  page
#   When uploading valid CSV file
#   Then It should take less then 5sec for showing results
#
#Scenario:2validate csv file upload result timing for file with 100 landing on upload page
#   Given I am on file Uploading page
#   When uploading valid CSV file(with 100 landing)
#   Then It should take less then 5sec for showing results
#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#FI0-3845-CC Blank line should be ignored if user uploaded csv file with blank lines
#Scenario: Validating message color and content for top banner of the file upload page
# Given I am uploading file,
# When file upload is in progress
# Then progress message is in blue on top banner on the upload page and After uploading the file, success notification banner will be in green.
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# FI0-3787-Hide showing blank line(s) & associated error(s) when the CSV file is uploaded
#
#Scenario: 1validate upload result for blank lines file
# Given I am on the /upload-file page
# When upload a csv file containing blank lines
# Then the service should displays information in the ‘Upload results’ table about all the lines in the file except blank lines
#
#Scenario:2Validate the  excel/text file with blank lines
# Given I am on the upload-file page
# When upload a  excel file/ text file containing blank lines
# Then the service should displays information in the ‘Upload results’ table about all the lines in the file except blank lines
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##FI0-3824-Show error message for anti-virus API failure once file selection has been finalised (2b)
#
# Scenario:1Verify upload result for virus-free  file
# Given I am on the file upload page
# When user-added virus-free file
# Then the system displays the file upload results.
#
#Scenario:2Verify upload result for virus file
# Given I am on the file upload page and uploading csv
# When system detects the virus file
# then system should displays the error message “There is a problem with the file upload service.Please try again later or enter your products and landings manually" error on top.
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##FI0-3823-Show message when upload is in progress
#
#Scenario:1Validate the file in progress message while uploading file
# Given I am on the file upload page and uploading csv
# When user uploading file on add your upload page
# Then while uploading the file on file upload page it should show the message “Please wait for your file to be validated and uploaded” in the top of the page in blue color.
#
#Scenario:2 Validate the file upload result message
# Given I am on the file upload page and looking for upload result
# When upload is done/will complete
# Then Above Message should be disappears and it should display the successful upload message in green color  and check 'how many rows updated successfully'
#-------------------------------------------------------------------------------------------------------------------------------------------------------
#FI0-3793-add landingEntrySelection to the response from the read endpoint /what-export-journey
#
#Scenario:1validate redirection/page guard condition of whose-waters-were-they-caught-in  page without landing type selection or type was undefined
#  Given If LandingEntry type not selected in the journey
#  When I land on the  whose-waters-were-they-caught-in  page and try to load the page
#  Then system should be navigated  to the landing entry page.
#
#Scenario:2validate redirection/page guard condition of what-export-journey page without landing type selection or type was undefined
#  Given I am in the  CC journey and checking landingEntrySelection to the response from the read endpoint
#  When I land on the what-export-journey and try to load the page
#  Then system should be navigated  to the landing entry page.
#
#Scenario:3validate redirection/page guard condition of how-does-the-export-leave-the-uk  page without landing type selection or type was undefined
#  Given I am in the  CC journey and checking landingEntrySelection to the response from the read endpoint
#  When I land on the how-does-the-export-leave-the-uk and try to load the page
#  Then system should be navigated  to the landing entry page.
#
#scenario:4validate redirection/page guard condition for transport journey pages without landing type selection
# Given I am in the  CC journey and checking landingEntrySelection to the response from the read endpoint
# When try to load the how-does-the-export-leave-the-uk(All transport pages),
# Then system should be navigate to landing entry page (where landing entry value/type was undefined).
# This should work for  below pages as expected:
# how-does-the-export-leave-the-uk
# add-transportation-details-plane
# do-you-have-a-road-transport-document
# add-transportation-details-train
# add-transportation-details-container-vessel"
#-----------------------------------------------------------------------------------------------------------------------------------------------
#  #FI0-3791-Re-direct user to landing entry page when landing entry is undefined
#
#Scenario:1Returning to an application last 'saved as draft'
# Given Returning to an application last 'saved as draft' and I opt to land on the /add-products page to  the /whose-waters-were-they-caught in page
# And the /landing-entry value is undefined/not saved
# When the page load triggers
# Then I am navigated to the /landing-entry page"
#----------------------------------------------------------------------------------------------------------------------------------------
#FI0-3790-Show notification in landing-entry page for Draft application created before the data upload feature
#
#Scenario:1 validate the system action for draft a CC
#  Given I an in the /landing-entry page
#  And the CC document was created before the upload file feature as available
#  And i already enter landing data for this document
#  When I load the /landing-entry page
#  Then I should see a notification message: “This new page offers ways to enter products and landings for different types of export. Select an option to continue”"
#-----------------------------------------------------------------------------------------------------------------------------------------
#  #FI0-3782-pre-populate the default answer on the landing entry page for existing draft cc applications created before data upload feature
#
#Scenario:1validate the result for draft cc with manual selection after resuming the journey
# Given I have a draft CC application which was drafted before the roll out of data upload capability
# when old draft is saved as Non direct landing type earlier.
# Then Manual Entry option will be selected on Landing entry page
#
#Scenario:2validate the result for draft cc with direct landing after resuming the journey
# Given I have a draft CC application
# When old draft is saved as direct landing type earlier and user revisited to the journey
# Direct Landing option will be selected on Landing entry page
#
#Scenario:3validate the result for draft cc without landing type after resuming the journey
# Given I have a draft CC application
# When old draft is saved earlier without any landing type (direct or non-direct)
# Then Verify No default selection will be present on Landing entry page
#------------------------------------------------------------------------------------------------------------------------------------------------------------
#FI0-3781-Trigger page guard for direct landing page
# Scenario: 1validate the action If user manually tries to go to /direct-landing page then trigger page guard
# Given I opt to access the /direct-landing page
# When I have earlier selected ‘upload’ or ‘manual entry’ on the /landing-entry page
# Then I need be navigated to the journey CC dashboard
#
#Scenario:2validate the action If user manually tries to go to /add-landings page then trigger page guard
# Given I opt to access the /direct-landing page
# When I have earlier selected ‘upload’ or ‘manual entry’ on the /landing-entry page
# Then I need be navigated to the journey CC progress page and any attempt for land on the /direct-landing page will be denied."
#----------------------------------------------------------------------------------------------------------------------------------
# FI0-3780-Trigger page guard for upload file page
#
#Scenario:1validate Triggered page guard for upload file page
# Given I opt to access the /upload-file page
# When I have not selected any answer on the /landing-entry page
# Then I need be navigated to landing entry page
#
#Scenario:2validate Triggered page guard for upload file page
# Given I opt to access the /upload-file page
# When I have earlier selected ‘direct landing’ on the /landing-entry page and clicks on ‘save and continue’
# Then I need be navigated to the cc dashboard
# Note: If user selects DL, then any attempt for them to land on the /upload-file will be denied.
#
#Scenario:3Verify page guard condition for direct landing
#  Given I am in the CC journey
#  When earlier selected ‘direct landing’ on the /landing-entry page and clicks on ‘save and continue’
#  Then user enter /upload-file on page guard  need to be navigated to the journey CC dashboard
#
#Scenario:4Verify page guard condition for manual entry
# Given I am in the CC journey
# When selected 'Manual entry' on the /landing-entry and clicks on ‘save and continue’,
# then user /upload-file on page guard need be navigated to the journey CC dashboard.
#
#Scenario:5Verify page guard condition
# Given I am in the CC journey
#  When user has not selected any answer on the /landing-entry page
#  then user enter  /upload-file on page guard need to  be navigated to the landing entry page.
#
#Scenario:6Verify page guard condition
#  Given I am in the CC journey
#  When user selected 'upload from CSV' option on the /landing-entry and clicks on ‘save and continue’,
#  then user navigated to the progress page
#--------------------------------------------------------------------------------------------------------------------------------------
#FI0-3773- Changes to summary page fields due to data upload
#
#Scenario:1 Verify the result - Remove row for is it a direct landing
# Given I am on the /check-your-information page
# When I view this page
# Then I should not be shown the row ‘is it a direct landing’ (And I should not see any ‘change’ link alongside it either)
#
#Scenario:2 Add row for How do you want to enter your products and landings?
# Given I am on the /check-your-information page,
# When I view this page,Then I should be shown the row ‘How do you want to enter your products and landings?
# And I should see a ‘change’ link alongside this row,If I click on the ‘change’ link
# Then I should be navigated to the /landings-entry page.
#----------------------------------------------------------------------------------------------------------------------------------------------
#FI0-3779-Deciding course of action from the the landing type confirmation page  -- Direct -> Manual /Upload file and Manual /Upload file -> Direct Landing, Manual -> Upload no confirmation
#
#Scenario:1validate the action for confirmation page
#  Given I land on the landing type confirmation page
#  When I select ‘Yes, I want to change my landings type’ and select ‘Continue’ on landing type confirmation page
#  Then 1.System navigate to the landing entry page.
#       2.Previous selection should be discarded.
#       3.Able to changed my selection :Direct landing entry to manual entry or upload file which is previous selection,Manual to  Direct landing entry or upload file,Upload file to direct landing or manual entry."
#
# Scenario:2Verify the result for canceled confirmation
#  Given I land on the landing type confirmation page
#  When I click on ‘cancel’ button
#  Then system should navigate back to the landing entry type page and previous selection will be as it is and not able to change selection.
#
#Scenario:3Verify the result for changed selection
#  Given I land on the landing entry type page
#  When I try to change my direct landing to manual entry or upload file
#  Then system navigate to ‘Yes, I want to change my landings type’ and select ‘Continue’ on landing type confirmation page and change to manual entry
#
#Scenario:4Verify the result for changed selection type
#  Given I land on the landing entry type page
#  When I try to change to manual entry to upload file or direct landing
#  Then system navigate to ‘Yes, I want to change my landings type’ and select ‘Continue’ on landing type confirmation page and change to upload or direct landing
#
#Scenario:5Verify the result for changed landing type selection
#  Given I land on the landing entry type page
#  When I try to change to manual entry to upload or direct landing and
#  Then my landing selection should not be change to other options and vice versa
#
#Scenario:6validate the action if user click on back and no link
#  Given I land on the confirmation page
#  When I click on ‘Back’ and NO link
#  Then system should navigate back to the landing entry type page previous selection will be as it is and not able to change selection.
#------------------------------------------------------------------------------------------------------------------------------
#FI0-3770-Change 'Back' link to add products page
#
#Scenario:1validate back link from /add-landings or the /direct-landings page
#  Given I am on the /add-landings page or the ‘direct-landings’ page
#  When I click on ‘back’ (and there are no errors thrown)
#  Then I will land on the /add-products page"
#-----------------------------------------------------------------------------------------------------------------------------------------------------
# FI0-3765-Remove existing Direct landing type page
#
#Scenario:1 Go forward from /add-products page - Land on /add-landings page
#Given I am on the /add-products page
#When I click on ‘Save and continue’ (and there are no errors thrown)
#Then I will land on the /add-landings page (if I previously selected to ‘manual entry’ or ‘upload’ product & landing information when on the /landing-entry page)
#
#Scenario:2 Go forward from /add-products page - Land on /direct-landings page
# Given I am on the /add-products page
# When I click on ‘Save and continue’ (and there are no errors thrown)
# Then I will land on the the /direct-landings page (if I previously selected to ‘direct landing’ when on the /landing-entry page)"
#
#Scenario:3 validate the navigation from add product page
# Given If I selected manual entry
# When Manual Entry is selected in landing entry page
# Then System should be navigate to add landing page from add product page
#--------------------------------------------------------------------------------------------------------------------------
#FI0-3763-Upload button to be removed when 100 landings are reached
#
#Scenario:1 Validate visibility of upload button
#  Given I land on the file upload page and uploading file
#  When user  reach  to 100 landings which are saved to application
#  Then Upload button on the /add-landings page to be disabled
#--------------------------------------------------------------------------------------------------------------------
#FI0-3762-Change page guard conditions for transport pages
#
#Scenario:1 validate page guard condition for  direct landing selection
#  Given I opt to open the any of the pages in the transport section of the cc application
#  And I have previously selected that my landing is a ‘direct landing’ (in the /landing-entry page)
#  When this page attempts to load
#  Then instead I am navigated back to the CC progress page"
#
#Scenario:2 Verify user is opt to open /how-does-the-export-leave-the-uk page
#  Given I opt to open the /how-does-the-export-leave-the-uk page And I have previously selected that my landing is a ‘direct landing’
#  When this page attempts to load
#  Then page load system navigated to the CC progress page"
#
#Scenario:3 Verify user is  opt to open /add-transportation-details-plane  page
#  Given I opt to open the /add-transportation-details-plane page and I have previously selected that my landing is a ‘direct landing’
#  When this page attempts to load
#  Then page load system navigated to the CC progress"
#
#Scenario:4 Verify user is  opt to open /add-transportation-details-train page
#  Given I opt to open the /add-transportation-details-train page and I have previously selected that my landing is a ‘direct landing’
#  When this page attempts to load
#  Then page load system navigated to the CC progress"
#
#Scenario:5 Verify user is  opt to open /add-transportation-details-fishing page
#  Given I opt to open the /add-transportation-details-fishing page
#  When this page attempts to load
#  Then page load system navigated to the CC progress
# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
