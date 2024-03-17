#FI0-3461	Update Product button when cancelling
# "Scenario1:When a user cancels the editing of a product, the form is cleared and the ‘Update’ button is reset to ‘Add button’
#Scenario2:When a user adds a new product after resetting the form the new product is added successfully by clucking on the ‘Add product’ button
#"
#FI0-3460	Add landing page- don’t reset the product field after adding a landing page	"Scenario 1: Verify the user is in “add landing page”, when the user clicks the 'ADD' button in Add landing form, Then the product field to Not to be cleared in product form.
#Scenario 2:
#Verify User is submitted invalid vessel name details to add a landing form, When click the 'ADD' button,Then see the errors not displayed in the same order as the fields in the form.
#Scenario 3:Verify User is submitted invalid weight details to add a landing form, When clicking the 'ADD' button, Then see the errors  not displayed in the same order as the fields in the form.
#Scenario 4:Verify user enter more than 7 days in future in date fields then click on  'ADD' button,Then see the errors not
#displayed in the same order as the fields in the form.
#Scenario 5:Verify user  BSS product  and enter landing date as 1st Feb to 31 March then click on 'ADD' button
#Then see the errors not  displayed in the same order as the fields in the form."
#FI0-3453	Add edit button to product table	"1: verify Edit button is present before Remove button in product list in Add product page
#2: Verify Clicking on edit button should populate the product details in the product fields and Add Product button is changed to Update Product
#3: Verify clicking on edit button will remove the errors on page if any and display the product details in the product fields"
#FI0-3452	Load the product details into the update form when change link from summary page	"Scenario1:
#Verify user is on the non-direct landing summary page in  When I Scenario1:click on the change link next to the product,then user redirected to the“Add product” page.
#
#Scenario2: Verify user have clicked on change link next to a product in Non-direct landing summary page,When user arrive on the Add product page, Then product form will be populated with the product details.
#
#Scenario3:
#Verify user is on the direct landing summary page in  When I click on the change link next to the product,then user redirected to the“Add product” page.
#
#Scenario4:Verify user have clicked on change link next to a product in direct landing summary page
#When user arrive on the Add product page, Then product form will be populated with the product details.
#
#Scenario5:
#Verify user is added more than one product then verify user on the non-direct landing summary page in  When I click on the change link next to the product,then user redirected to the“Add product” page"
#"FI0-3372
#
#
#"	Automatically select the commodity code if there is only one option	"1. Verify Commodity code is preselected when a species, state & presentation is selected in Add product, when product has one commodity code
#2. Verify no commodity code is preselected when a species, state & presentation is selected in Add product, when product has more than one commodity code
#3. Verify state, presentation and commodity code fields should be reset when product is changed in the product field. (Previously product, state, presentation and commodity code is selected)
#4. Verify presentation and commodity code fields should be reset when state is changed in the field. (Previously product, state, presentation and commodity code is selected)
#5. Verify commodity code fields should be reset when presentation is changed in the field. (Previously product, state, presentation and commodity code is selected)
#"
#
#
#
#
#FI0-3369	Add a date picker alongside the new date inputs	"Scenario1.Create a new CC and verify the date picker icon next to the date fields in the Add landingpage,The product field is at the top in landing screen, if the landing is Non-Direct landingScenario                                                                                                                                                           Scenario2:Create a new CC and verify the date picker icon next to the date fields in the direct landing pageScenario                                                                                                                                                              Scenario3:Create a new CC and verify the date picker in the Add landing page, verify clicking data picker icon will show the calendar and will highlight the today's datScenario                                                Scenario4.Create a new CC and verify the date picker in the direct landing page, verify clicking on date picker icon will show the calendar and will highlight the today's date
#
#Scenari5.Open existing CC and navigate to Add landing page, verify clicking on date picker icon will show the calendar and will highlight the day which is already entered
#
#Scenario6.Open existing CC and navigate to direct landing page, verify clicking on date picker icon will show the calendar and will highlight the day which is already entered
#
#Scenario7.Create a new CC and verify selecting a date in the date picker in the Add landing page, will add the date details in the 3 date fields
#
#Scenario8.Create a new CC and verify selecting a date in the date picker in the direct landing page, will add the date details in the 3 date fields
#
#Scenario9.Open existing CC and verify selecting a date in the date picker in the Add landing page, will update the newly selected date details in the 3 date fields
#
#Scenario10.Open existing CC and verify selecting a date in the date picker in the direct landing page, will update the newly selected date details in the 3 date fields"
#
#FI0-3248	Change error message so that it appears when Commodity Code makes up the uniqueness of a product	"Scenario1:Verify error message is displayed when a Product with same state, same presentation and  commodity code, added again. Product with one commodity code is selected.
#
#Scenari2:Verify error message is displayed when a Product with same state, same presentation and  same commodity code, added. Product with two commodity code is selected.
#
#Scenari3:Verify system allows to add a product when a Product with same state, same presentation and  different commodity code, added. Product with two commodity code is selected."
#F10-3370	Add landing page-Move product select to the top of the add landings form	Scenario:The product field is at the top in landing screen, if the landing is Non-Direct landing
