#Feature: Creating CC using Favorite option when javascript is disabled
# As an Exporter,
# I want to be able to select products from favorite option while creating a CC when JS is disabled
# So that i can create a CC document
#
#@FI0-4949
# Scenario: Validate Favourite link in ‘Manage-favourites’ page
# Given that I am Dashboard page
# When I click on Favourite link in Header
# And I Navigate to Manage Favourite page
# When I verify the header in Manage favourite page
# Then Favourite link should not  be displayed in header
#
#@FI0-5038
# Scenario: 1 Validate the Add Product as a Favourite - Happy Path
# Given I land on the /manage-favourites page
# And I specify all mandatory details of a product in the form
# And I do have javascript enabled
# When I click on ‘Add product favourite'
# And validation runs (this should work as it currently does)
# And validation passes
# Then my product is added as a favourite
#
# Scenario: 2 Validate the No/partial product details specified when clicking Add Product as a favourite - Error
# Given I am on the /manage-favourites page
# And the product details for a product are not fully specified in the fields (Common name or FAO code, State, Presentation & Commodity Code fields)
# And I do have javascript enabled
# When I click on the ‘Add product favourites’ button
# Then I am shown an error in English / Welsh (based on the language preference specified)
#
# Scenario: 3 Validate the Product favourite already exists - Error
# Given I am on the /manage-favourites page
# And the product details for a product are now fully specified in the fields (Common name or FAO code, State, Presentation & Commodity Code fields)
# And I do have javascript enabled
# When I click on the ‘Add product favourites’ button
# And the product specified is already saved as a product favourite of mine
# Then I am shown an error in English / Welsh (based on the language preference specified)
#
# Scenario: 4 Valida the Cancel button selected
# Given I am on the /manage-favourites page
# And I do have javascript enabled
# When I select ‘Cancel’
# Then all unsaved product details specified on the Product form are removed (this product is not saved as a product favourite)
#
# Scenario: 5 Validate the Remove button selected
# Given I am on the /manage-favourites page
# And I do have javascript enabled
# When I select the ‘Remove’ button against a product favourite
# Then this product is removed from my favourites list (so it will no longer appear on the ‘Your product favourites’ table on the /manage-favourites page nor in the ‘Add products from favourites’ tab in the /what-are-you-exporting page)
#
# Scenario: 6 Validate the error- When 50 product favourites is reached
# Given I have navigated the /what-are-you-exporting of my CC application
# And I do not have javascript enabled
# And the page is rendered
# And I have already added 50 products as favourites
# And I click on ‘Add product favourites’
# Then an error will be shown reading ‘You have reached your limit of 50 product favourites’
#
#
# @FI0-5046
# Scenario:1 Should be able to Add a Product as a Favorite successfully
# Given I land on the /manage-favorites page
# And I specify all mandatory details of a product in the form
# And I do NOT have javascript enabled
# When I click on ‘Add product favorite'
# And validation runs successfully
# Then the product is added as a favorite successfully
#
# Scenario: 2 Should display an error message when adding a product for No/partially completed product details field
# Given I am on the /manage-favourites page
# And I do NOT have javascript enabled
# And the product details for a product are not fully specified in the fields (Common name or FAO code, State, Presentation & Commodity Code fields)
# When I click on the ‘Add product favourites’ button
# Then I am shown an error in English / Welsh (based on the language preference specified)
#
# Scenario: 3 Should display an error if a Product favourite already exists
# Given I am on the /manage-favourites page
# And I do NOT have javascript enabled
# And I have specified all the fields of the product details for a product I want to add to favorites (Common name or FAO code, State, Presentation & Commodity Code fields)
# When I click on the ‘Add product favourites’ button
# And the product specified is already been previously saved as a product favourite of mine
# Then I am shown an error in English / Welsh (based on the language preference specified)
#
# Scenario: 4 Validate that the Cancel button clears the form fields
# Given I am on the /manage-favourites page
# And I do NOT have javascript enabled
# And i have completed the form fields
# When I select ‘Cancel’
# Then all unsaved product details specified on the Product form are removed
#
# Scenario: 5 Validate that the 'Remove button' removes a product from the favorite list
# Given I am on the /manage-favourites page
# And I do NOT have javascript enabled
# When I select the ‘Remove’ button against a product favourite
# Then this product is removed from my favourites list and no longer appear on the ‘Your product favourites’ table on the /manage-favourites page
# And it is also removed from the  Add products from favourites tab in the /what-are-you-exporting page
#
# Scenario: 6 Validate the Add a species/state/presentation buttons when a valid selection is made for each field
# Given I have navigated the /manage-favourites of my CC application
# And I do not have javascript enabled
# And a species / state / presentation / commodity code is chosen on the ‘Add products’ section
# When I click Add Species / Add state / Add presentation buttons
# And validation runs and passes, as a value has been specified from the list available and there are no errors found
# Then the Specie / state / presentation will be chosen successfully
# And based on this, the options in the next drop-down directly below will be available
#
# Scenario: 7 Validate the Add species/ add presentation / add state Button in ‘Add products’ section displays an error when no valid selection is made
# Given I have navigated the /what-are-you-exporting of my CC application
# And I do not have javascript enabled
# And the page is rendered
# And I do not specify a species / state / presentation on the ‘Add products’ section
# When I click the Add Species / Add state / Add presentation button(s)
# And validation runs and fails, because a value has not been specified from the list available
# Then an error will be displayed for the respective field
#
# Scenario: 8 Validate that an error message is displayed when 50 product favourites limit is reached
# Given I have navigated the /what-are-you-exporting of my CC application
# And I do not have javascript enabled
# And the page is rendered
# And I have already added 50 products as favourites
# And I click on ‘Add product favourites’
# Then an error will be shown reading ‘You have reached your limit of 50 product favourites’
#
# @FI0-5078
# Scenario: 1   Validate the visibility of add product button by adding the 100th products
# Given I am on the /what-are-you-exporting of my CC application
# And I do not have javascript enabled
# When I successfully add my 100th product to my application by clicking on the ‘Add product’ button
# Then the ‘Add product’ button will disappear
#
# Scenario: 2 Validate  the visibility of add product button by removing the 100th products
# Given I am on the /what-are-you-exporting of my CC application
# And I do not have javascript enabled
# When I remove my 100th product to my application by clicking on the ‘Remove' button
# Then the ‘Add product’ button will re-appear
#
#
# @FI0-5087
# Scenario: 1 Validate the edit button and functionality on the what-are-you-exporting page
# Given user land on the what-are-you-exporting page
# And JavaScript is disabled
# And the user is having previously saved products on the application
# When clicking on the edit button
# Then details should be editable on that page
# And add product button should be changed to the update product button
# And all details should be revalidated and if validation passes
# Then all details should be saved and the form will be reset to the default view
#
# Scenario: 2 Validate  the edit button and functionality and saved the product to the favourite list
# Given user land on the what-are-you-exporting page
# And JavaScript is disabled
# And the user is having previously saved products on the application
# When clicking on the edit button
# Then details should be editable on that page
# And add product button should be changed to the update product button
## If I checked the add favourite checkbox
# And all details should be revalidated and if validation passes
# Then all details should be saved  to the favourite list as well and form will be reset to the default view
#
# Scenario: 3 Validate the edit button and make sure that only valid details should be saved
# Given user land on the what-are-you-exporting page
# And JavaScript is disabled
# And the user is having previously saved products on the application
# When clicking on the edit button
# Then details should be editable on that page
# And add product button should be changed to the update product button
# And all details should be revalidated and if validation failed
# Then the user should not be able to save the specified details
#
# Scenario: 4 Validate the page title for both languages (Welsh / English)
# Given user land on the what-are-you-exporting page
# When inspecting the page and checking the page title
# Then page title should be in properly aligned with the TST environment in Welsh and English
#
# @FI0-5090
# Scenario: 1 Save as draft button
# Given I have navigated the /what-are-you-exporting of my CC application
# And I do NOT have javascript enabled
# And the page is rendered
# When I click on the ‘Save as draft’ button
# Then I am navigated to the CC dashboard page
# And unsaved product details on the form are not saved
#
# Scenario: 2 Save and continue button - Happy path
# Given I have navigated the /what-are-you-exporting of my CC application
# And I do NOT have javascript enabled
# And the page is rendered
# When I click on the ‘Save and Continue’ button
# And there are no errors found on the page
# Then I should be navigated to the next page in the journey (so the landing pages)
# And any unsaved details on the product form will be removed from the UI and remain unsaved (so that if the user later returns on this page the product form will be re-set to it’s default view)*
#
# Scenario: 3 Save and continue - No product saved error
# Given I have navigated the /what-are-you-exporting of my CC application
# And I do NOT have javascript enabled
# And the page is rendered
# And I have not saved at least 1 product to my application
# When I click on the ‘Save and Continue’ button
# Then I will be displayed an error and kept on the what-are-you-exporting page
#
# @FI0-4890
# Scenario 1: Add a product as a favourite whilst manually specifying product details and then adding the product - Happy path
# Given I have navigated the /what-are-you-exporting of my CC application
# And I do not have javascript enabled
# And I specify product details
# And I did click to ‘Add to product favourites’ on the ‘Add products’ tab
# When I click 'Add Product'
# And validation runs and passes
# Then the product will be added to my (user) list of product favourites
#
# Scenario 2: Add a product via the ‘Add products from favourites’ section - Happy path
# Given I have navigated the /what-are-you-exporting of my CC application
# And I do not have javascript disabled
# When I chose a product favourite to add to my application from the ‘Add products from favourites’ section
# And I click ‘Add Product’ button
# And validation runs and passes
# Then the product will be added to my application and will therefore also appear in the ‘Your products’ table at the bottom of the page
#
# Scenario 3: Add a product via the ‘Add products from favourites’ section - Error
# Given I have navigated the /what-are-you-exporting of my CC application
# And I do not have javascript disabled
# When I chose a product favourite to add to my application from the ‘Add products from favourites’ section
# And I click ‘Add Product’ button
# And validation runs and fails because the product favourite has already been added to my application
# Then an errors appears
#
# Scenario 4: Add a product via the ‘Add products from favourites’ section - Error 2
# Given I have navigated the /what-are-you-exporting of my CC application
# And I do not have javascript disabled
# When I do not chose a product favourite from the list to add to my application from the ‘Add products from favourites’ section
# And I click ‘Add Product’ button
# And validation runs and fails because I have not chosen a product to add
# Then an errors appears
#
# Scenario 5: Add a product as a favourite whilst manually specifying product details and then adding the product - Error 3
# Given I have navigated the /what-are-you-exporting of my CC application
# And I have already got 50 product favourites saved against my user (so the /manage-favourites page contains 50 products already which is the limit)
# And I do not have javascript enabled
# And I specify product details (which are not already set as a favourite)
# And I did click to ‘Add to product favourites’ on the ‘Add products’ tab
# When I click 'Add Product'
# And validation runs and fails
# Then an error appears
#
#@FI0-5079
#Scenario 1: Edit button - Happy path - JS enabled
#Given I have navigated the /what-are-you-exporting of my CC application
#And I do have javascript enabled
#And I have previously successfully saved a product to my application
#When I click on the Edit button
#Then the details of this product appear on the form and can be edited
#And the ‘Add product’ button now reads ‘Update product’
#And If I update the product details
#And I do not check the add to product favourite checkbox
#And click on ‘Update product’ button
#Then the latest specified product details should be re-validated
#And if validation passes
#Then latest specified product details will be saved to my application and the form will be reset to it’s default view
#
#Scenario 2: Edit button - Happy path with product added as a favourite- JS enabled
#Given I have navigated the /what-are-you-exporting of my CC application
#And I do have javascript enabled
#And the page is rendered
#And I have previously successfully saved a product to my application
#When I click on the Edit button
#Then the details of this product appear on the form and can be edited
#And the ‘Add product’ button now reads ‘Update product’
#And If I update the product details
#And I check the add to product favourite checkbox
#And click on ‘Update product’ button
#Then the latest specified product details should be re-validated
#
#Scenario 3: Edit button - Error(s) found - JS enabled
#Given I have navigated the /what-are-you-exporting of my CC application
#And I do have javascript enabled
#And the page is rendered
#And I have previously successfully saved a product to my application
#When I click on the Edit button
#Then the details of this product appear on the form and can be edited
#And the ‘Add product’ button now reads ‘Update product’
#And If click on ‘Update product’ button
#Then the latest specified product details should be re-validated
#And if validation fails
#Then latest specified product details will NOT be saved to my application
#
#Scenario 4: Cancel button
#Given I have navigated the /what-are-you-exporting of my CC application
#And I do or do not have javascript enabled
#And the page is rendered
#When I click on the ‘Cancel’ button
#Then the form fields (Common name or FAO code, State, Presentation, Commodity code)
#And any errors displayed will also disappear
#
#
#@FI0-5080
#Scenario 1: Hundredth product added
#Given I am on the /what-are-you-exporting page of my CC application
#And I do not have javascript enabled
#When I successfully add my 100th product to my application by clicking on the ‘Add product’ button
#Then the ‘Add product’ button will disappear
#And the ‘Add product from favourites’ button will disappear
#
#Scenario 2: Hundredth product removed
#Given I am on the /what-are-you-exporting page of my CC application
#And I do not have javascript enabled
#When I remove my 100th product to my application by clicking on the ‘Remove' button
#Then the ‘Add product’ button will re-appear
#And the ‘Add product from favourites’ button will re-appear