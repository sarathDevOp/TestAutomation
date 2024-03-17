#FI0-4063
#Given I am on the upload guidance page ( /upload-guidance )
#When I see the text 'Product favourites' in the guidance text
#Then I want this to be a link
#If I click on this link
#Then I will be navigated to my /manage-favourites page

#FI0-4540
#Given I am create new CC/PS/SD journeys
#And I am on the progress page
#When I am checking Headers    h1,h2    on the progress page
#Then content by default English
#And I am switching English to Walsh language .

#FI0-4565
#Scenario1: Verify the guidance text in what export journey page in CC journey with direct landing
#Given I am on the /what-export-journey of my CC application
#When I view this page
#Then I see displayed under the ‘Select the departure country’ field
#
#FI0-4566
#Scenario 1: Add guidance text
#Given I am on the /add-catch-weights page of my PS application
#When I view this page
#Then I see displayed  in the ‘Export Weight in kg  field
#
#Scenario 2: Welsh translation of new text
#Given I am on the /add-catch-weights page of my PS application
#When I select to view the page in Welsh
#Then the following text needs translating
#
#FI0-4681
#Scenario 1:
#Given I am on the /catch-certificates page of the FES service
#When I view this page
#Then I see displayed the ‘Manage your product favourites’ link (as shown in the UI design attached)
#And if I click on this link
#Then I am navigated to the /manage-favourites page
#Scenario 2: Welsh translation
#Given I am on the CC dashboard
#When I select to view the page in Welsh
#Then the following needs translating

#FI0-4685
#Scenario1: Verify clicking on link ‘Manage your product favourites’ in ‘Add Product from Favourites' of
#Add product page is navigating to Manage Favourite page
#Given I have elected to create a catch certificate
#And I have elected to add product details as part of the initial journey or from ‘Your Progress’
#When I select the ‘Add products from favourites' tab on the ‘What are you exporting’ page
#Then I will see a hyperlink ‘Manage your product favourites’
#And the font size will be 19px
#And the font colour will be #005EA5
#And it will replace the current link of 'What are product favourites’
#And selecting the ‘Manage your product favourites’ will open the manage-favourites page in the same tab

#FI0-4696
#Given I am on any of the PS pages where the ‘Back to your progress’ link exists
#When I view this page/link
#Then  I am navigated to the progress page

#FI0-4697
#Given I am on any of the SD pages where the ‘Back to your progress’ link exists
#When I view this page/link
#Then I am navigated to the progress page

#
#FI0-4123
#Given I am on the /what-exporters-address page of the CC,PS,SD
#And I have specified an exporter address which include the letter(s) in the manual entry view called ‘What is the exporter’s address’: & .
#When I click on the 'Continue' button
#Then the address will be saved
#And I will be navigated back to the /add-exporter-details page where the saved address will appear.
#
#FI0-4666
#Scenario 1: CC journey
#Given I am on any of the CC pages where the ‘Back to your progress’ link exists
#When I view this page/link
#Then I am navigated to the progress page
#
#FI0-4710
#Scenario 1: Make ‘Check your answers and submit’ button visible at all times  & happy path navigation on SD application
#Given I am on the /progress page of my SD application
#When I view this page
#Then I can always view the ‘Check your answers and submit’ button
#And If I selected this button and all mandatory sections are ‘Complete’ in my application
#Then I am navigated to the CC /check-your-information page
#
#FI0-4716
#Scenario 1: Make ‘Check your answers and submit’ button visible at all times  & happy path navigation on PS application
#Given I am on the /progress page of my PS application
#When I view this page
#Then I can always view the ‘Check your answers and submit’ button (see attached UI design)
#And If I selected this button and all mandatory sections are ‘Complete’ in my application
#Then I am navigated to the CC /check-your-information page