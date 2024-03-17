Feature: Create 'Add Exporter Details' page for Admin users with no Javascript enabled browser navigating from the admin app when creating a new application
  As an Admin officer,
  I want to validate the rendering of the add exporter page
  So that I can add the exporter information.

  @FI0-4814
Scenario: 1 Validate the ‘Add Exporter Details' page for Admin users with no Javascript-enabled browser navigating from the admin app
Given I have navigated to the /add-exporter-details page of my CC application from the administrator tool
And I am creating a new application
And I do not have javascript enabled
Then the page will be rendered as per attachment ‘Add-Exporter Details Render’ (but without the fields pre-populated)

Scenario: 2 Validate the Name and company name field on the page, It should be editable
Given I have navigated the /add-exporter-details page of my CC application from the administrator tool
And I do not have javascript enabled
When the page is rendered
Then the following fields will be editable
#Name of person responsible for this export
#Company name

Scenario: 3 Validate the below Hyperlinks: hyperlinks will be active
Given I have navigated the /add-exporter-details page of my CC application from the administrator tool
And I do not have javascript enabled
When the page is rendered
Then the following hyperlinks will be active
#Change - Navigates the user to a non-JS equivalent page of ‘what-exporters-address’
#Back to your progress - Navigates the user to the non-JS equivalent page of ‘progress’
#Back - Navigates the user to the previous page they visited

Scenario: 4 Validate the  ‘Add Exporter Details' page content for the welsh language
Given I am on the /add-exporter-details page of my CC application from the administrator tool
And I do not have javascript enabled
Then the page will be translated into Welsh

Scenario: 5 Check the message content when the IDM address is not prepopulated
Given  I am on the /add-exporter-details page creating a new CC application from the administrator tool
And I do not have javascript enabled
When no IDM details are pre-populated on this page
Then I can view the message 'Your registration address could not be accessed. Please add the exporter’s address' against the address field



#-----------------------------------------------------------------------------------------------------------------------------------------------------------------
#
#FI0-4841 CC Buttons on 'whose-waters-were-they-caught-in' page for users when Javascript is disabled
#
#Scenario: 1Validate top half the product /what-are-you-exporting page when disable the java script
#Given I opt to navigate to the /what-are-you-exporting page of my CC application
#And I don’t have javascript enabled
#When this page loads
#Then the top half of the page will be rendered with
#Add products
#Add products from favourites
#When I click on  ‘I cannot find the species'
#Then ‘I cannot find the species' should be expanded.
#
#Scenario: 2Verify product details on top half of  /what-are-you-exporting page when disable the java script.
#Given I have navigated the /what-are-you-exporting of my CC application
#And I do not have javascript enabled
#When the page is rendered
#Then I can Validate
#Common name or FAO code  drop-down,
#State drop-down,
#Presentation drop-down
#Commodity Code  drop-down
#Product drop-down displayed properly.
#Then Check the checkbox ‘Add to Product Favourite’
#When Check box is selected.
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
#---------------------------------------------------------------------------------------------------------------------------------------------------------
# FI0-4894  CC Display top half of Product page for users when Javascript is enabled (UI)
#
#Scenario: 1Verify the What are you exporting page contains tabs Add products, Add products from favourites
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
#And I click on Welsh toggle
#Then the page is translated to Welsh
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#FI0- 5006  CC Display bottom half of Product page for users when Javascript is disabled (UI)
#
#Scenario: 1 Validate bottom half of  /what-are-you-exporting page of my CC application when disable javascript
#Given I am opt to navigate to the /what-are-you-exporting page of my CC application
#And I don’t have javascript enabled
#When this page loads
#Then the bottom half of this page will be rendered
#Your products table (including ‘edit’ and ‘remove’ button)
#Save and Continue button
#Save as draft button
#Back to your progress link.
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
#---------------------------------------------------------------------------------------------------------------------------------------------
#FI0-5010 :CC Display bottom half of Product page for users when Javascript is enabled (UI)
#
#Scenario: 1 Verify the What are you exporting page contains Product details
#Given I logged in to the application
#And I have navigated to what-are-you-exporting page in CC journey
##And I have javascript enabled
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
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------