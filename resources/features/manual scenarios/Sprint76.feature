#FI0-3614	View option to add a product favourite (Create tab view)
# "1.Scenario: Verify the user is on /add-products page then display tab view for adding products and add products from favorites
#
#Scenario2: Verify the user is on /add-products page then the page defaults to the Add products tab.
#
#Scenario3:Verify user is on /add-products page then specify individuals details for a product
#"
#FI0-3616	Enter and chose product from product favourites field	"
#
#
#
#Scenario1:Verify user is on /add-products page then the user is ‘Add products from favourites' tab
#When user try to enter the details of the product favourite of the user and the results of my matching product favourite(s) appear.
#
#Scenario2:Verify user is on /add-products page then the user is ‘Add products from favourites' tab
#When the user tries to enter the details of the product favourite of the user and then the results of my matching product favourite(s) appear and add to the application.
#
#Scenario3:Verify user is on /add-products page then the user is ‘Add products from favourites' tab
#When the user tries to enter the details other than of product favourite of the user and the results of my matching product favourite(s) do not appear."
#FI0-3618	Display error if user tries to add same product as already added to the application	"Scenario1:Verify user  on the /add-products page in Add products from favourites’ tab choose a product
#that is a favourite this exact same product is already added to the product list for this CC application
#then click on ‘Add product’ button then show the 'The combination of species, state, presentation and commodity code must be unique for each product'
#error message.
#
#Scenario2:Verify user  on the /add-products page in Add products tab and  ‘add to favourites’ checkbox is cheaked that is a favourite this exact same product is already added to the product list for this CC application then click on ‘Add product’ button then show the 'The combination of species, state, presentation and commodity code must be unique for each product'
#error message."
#"FI0-3659
#
#
#"	Limit number of product favourites on Add products page	"Scenario1:Verify user is on Add-products page when user has already 50 products favourites and check the
#‘Add product to favourites’ checkbox then click on the ‘Add product’ button then display the notification error.
#
#Scenario2:Verify user is on Add-products page when the user has already 50 products favourites and check the
#‘Add product to favourites’ checkbox then click on ‘Add product’ button then display the “You have reached your limit
#of 50 product favourites” error.
#
#Scenario3: When the user gets the “You have reached your limit of 50 product favourites” error. then go to console page displayed 400(Bad Request errors).
#"
#
#
#
#
#FI0-3617	Add product favourite to CC application & update product table	"Scenario1:Verify user is on /add-products page in ‘Add products from favourites' tab when the user
#specifies a product from the product favourites.
#
#Scenario2:When I specify a product from the product favourites then click on 'Add product'
#then the product should be added to my CC application.
#
#Scenario3:When I specify a product from the product favourites then click on ‘Add product’ then now
#appear at the bottom of the ‘Your products’ table, with a  ‘edit’ and ‘remove’ button alongside in the row\
#
#Scenario4:When I specify a product from the product favourites then click on 'Add product then now
#appear at the bottom of the ‘Your products’ table, with a  ‘edit’ and ‘remove’ button alongside in the row
#the product input field should go back to it’s the default state of the blank."
#
#FI0-3621	Display error when attempting to add product without having selected a product	"Scenario1:Verify error message is displayed when a Product with same state, same presentation and  commodity code, added again. Product with one commodity code is selected.
#
#Scenari2:Verify error message is displayed when a Product with same state, same presentation and  same commodity code, added. Product with two commodity code is selected.
#
#Scenari3:Verify system allows to add a product when a Product with same state, same presentation and  different commodity code, added. Product with two commodity code is selected."
#F10-3625	Display notification when adding a product as a favourite but it already exists	"Scenario:Verify user on the /add-products page in ‘Add products’ tab specify all details of a product
#check ‘Add to product favourites’ checkbox and I save to ‘Add product’ Then the system will notice that the same product
#already exists as one of my favourites"
#F10-3623	Add a manually entered product as a favourite (checkbox)	Scenario1:Test and Passed, when user selects the Check box when adding a product to the product table the product is successfully added to the Favorite Products list                                           Scenario2:Add products to Products table                                                                                               Scenario3:Click on favorite tab
#F10-3626	Display text near product input field so user can easily manage their favourites	Scenario1:Text displayed in the Add Product Favorite tab                                                                   Scenario2:Text is collapsed by default                                                                                                                   Scenario3: User is able to expand the text                                                                                                           Scenario4: Clicking on the manage favorite link redirects user to the Product Favorite page and opens in a new tab.
#
#F10-3630	Navigating away from Add products page without having saved details resulting in details being lost + Documentation	Scenario1:Navigate to Add product page                                                                                                    Scenario2:Select product from favorite list (Note, for this test users must have added products to their favorite list, in order for them to be able to select a product from the product list)               Scenario3: - Navigate away from the Add product page without clicking on the ‘Add product’ button, using the application back button                                                                                                            Scenario4:Navigate to the add products page, and observe that the form has been cleared and the selected favorite product is not displayed.
#F10-3611	Limit number of product favourites on Favourites page	Scenari1:its throwing error after 50 products are added. Its working as expected
#F10-3629	Display error message when Add product (favourite no longer valid)	Tested this story with different combinations of Species, State, Presentation and Commodity code of Favourites in SND environment and its working fine.
#F10-3627	Editing a product will open the product in edit mode + once product is edited then display any necessary errors/notifications	When adding a product that already exist in the favorite list (either by selecting the checkbox when creating a new CC or by editing a product in the Product table) a warning message is displayed to the user informing them that the product already exist in the Favorite list
#F10-3628	Re-set 'Add to product favourite' checkbox after 'Add product'/'Update product'/'Cancel' + Navigating across tabs	Scenario 1 - When a selects the checkbox when populating product details and subsequently clicks on the cancel button, the whole form is reset to it’s original state
#F10-3621	Display error when attempting to add product without having selected a product	"Scenario1:Verify user /add-products page  in ‘Add products from favourites’ tab not
#NOT chosen a product favourite from the product field then click on ‘Add product’
#then display the “Select a product favourite from the list” error message.
#
#Scenario2:Verify user /add-products page  in ‘Add products from favourites’ tab not
#NOT chosen a product favourite from the product field then click on ‘Add product’
#then display the “Select a product favourite from the list” error message at the top
#against the field
#
#Scenario3:Verify user /add-products page the errors remain as the user toggles across tabs."
