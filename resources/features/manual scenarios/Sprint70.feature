#Tickets and Scenarios of Sprint 70 ( Add Landing page - New design)

#3268
#1. Verify clicking on Remove button on the product table in add landing page is removing the product from the list
#2. Verify clicking on Remove button on the product table in add landing page, product is removed from the drop down list
#3. Verify removing a product from Product table in Add landing page, the total export weight in Your products table in the footer is recalculated
#4. Verify associated landings for a product is removed from your landings table when a product is removed clicking on Remove Button in the ‘your products’ table
#5. Verify the number of landings in the 'Your Landings' table footer is recalculated when a product is removed and the product has landing associated
#6. Verify the product is removed in what are you exporting page when clicking on Remove button for the product in Add landings page

#3267
#1. Verify all the products associated with the application is listed in the Your products table which are added in the previous page ‘what-are-you-exporting’
#2. Verify That export weight and Total export weight is displayed 0 initially when no landings are present for any product
#3. Verify the Add products table is added with a product in Add landing page when user goes back and product is added in the ‘what-are-you-exporting’ page
#4. Verify the Add products table is removed the product in Add landing page when any product is removed from the Add products page
#5. Verify that Export weight of all landings for each product is displayed in the 'Your products' table in Add landing page
#6. Verify the sum total of the product export weights for all products will be displayed in the 'Your product' table in Add landing page

#3269  //*[@id="root"]/div/div/div/div[1]/div/div[2]/div
#1. Verify Empty landing table 'Your Landings' in Add landing page when there are no landings and '0 landings' appear in the footer of the table
#2. Verify landings are added in 'Your Landings' table in Add landing page when there are few landing landings and 'Number of landings' appear in the footer of the table
#3. Verify landings and number of landings are displayed correctly in the cloned document in 'Your landings' table

#3270
#1. Verify that Your landing table is added with landings details when Landing is added for a product in Add landing page
#2. Verify that Total Landings count is increased by 1 when landing is added.
#3. Verify that when landings is added for a product the Export Weight is updated in the Your Products table.
#4. Verify the Total export weight should be adjusted to include the export weight of the product added
#5. Verify the export weight is initially 0 for a product in your products table when no landings are added for that product.
#6. Verify that Total Landing count displayed 0 initially when no landings are present for any product.

#3271
#1: Verify the landing details are saved when a landing is added to the CC application when Add single landing for a product
#2: Verify the landing details are saved when a landing is added to the CC application when Add multiple landings for same product
#3: Verify the landing details are saved when a landing is added to the CC application when add single landing for different products
#4: Verify the landing details are saved when a landing is added to the CC application when add multiple landings for different products
#5: Verify the landing details are saved when a landing is added to the CC application when add same landing data for different products

#3272
#1.Verify that Your landing table is removed with landings details when Landing is removed for a product in the Add landing page.
#2.Verify that the Total Landings count is decreased by 1 when landing is removed.
#3.Verify that when landings are removed for a product the Export Weight is updated in the Your Products table.
#4.Verify the Total export weight should be adjusted to deduct the export weight of the product removed.
#5.Verify the export weight is initially the sum weight for a product in your products table when no landings are removed for that product.
#6.Verify that the Total Landing count displayed 1 or more initially.

#3273
#1. Verify the fields for new design page of Add Landings. The fields name are in bold ( date Landed, Catch area, Vessel name or PLN, Product, Export Weight)
#2. Verify the product is specified by the user and product field is after Vessel name or PLN field.
#3. Verify default values 'Catch area' is FAO27 and Product is 'Select a product'.
#4. Verify the guidance for the fields Date Landed and Export Weight is displayed as per the design.
#5. Verify the guidance ' I can not find the vessel' present in the form.
#6. Expand the ‘I can not find the vessel’ link and verify the contents.
#7. As per the guidance in ‘I cannot find the vessel’ the value ‘Vessel not found (N/A)’ should be accepted by the Vessel name or PLN field and the landing should be added.

#3274
#1.Verify all the fields in the Add landing page
#2.Verify the default values for each fields in the Add Landing page
#3.Verify the values are populated properly in the fields and user is able to select a value if it is a list item
#4.Verify the values can be entered in the fields if it is a text box
#5.Verify all the landing values are saved properly for the product when added landing for the product
#6.Verify all the fields are reset to default values once clicked on Add Landing button to add the landings for the product

#3275
#1. Verify the Clicking on Cancel button in the Add landings page will reset to the default values of the fields  Date landed - empty fields, Catch area - FA027, Vessel name or PLN - Empty field, Product - Select a Product, Export weight - Empty field
#2. Click on Edit any landings will show the landing details on the fields and Clicking on Cancel button in the Add landings page will reset to the default values of the fields
#3. Update all or few fields and click on Cancel button in the Add landings page will reset to the default values of the fields
#4. Verify Add landing fields are reset to default values click on Cancel button when invalid values are entered during add or edit landings
#5. Verify Add landing fields are reset to default values click on Cancel button error messages are displayed due to invalid values in the fields

#3276
#1: Verify the validation error message when mandatory field vessel is not Chosen during Add Landing. The  error message is ‘Select a vessel from the list’
#2: Verify the validation error message when mandatory field export Weight is not entered or Enter invalid value like letters (other than numbers ) during Add Landing. The error message is 'Enter the export weight as a number, like 500 or 500.50'
#3: Verify the validation error message when Export Weight when more than 2 decimal places entered during Add Landings. The error message is 'Enter the export weight as a number with a maximum of 2 decimal places.
#4: Verify the error message when no date is entered in the date fields during Add landings. The error message is ‘Enter the date landed’
#5: Verify the error message when Date entered is not up to 7 days of the future during Add landing.  The error message is ’Date landed can be no more than 7 days in the future'
#6:  Verify Black fish restrictions error message is displayed during add landing, when  Landing for product (BSS) is added between 1st Feb and 31st March.
#7.: Verify the validation error message when mandatory field vessel is not Chosen during Edit Landing. The  error message is ‘Select a vessel from the list’
#8: Verify the validation error message when mandatory field export Weight is not entered or Enter invalid value like letters (other than numbers ) during Edit Landing. The error message is 'Enter the export weight as a number, like 500 or 500.50'
#9: Verify the validation error message when Export Weight when more than 2 decimal places entered during Edit Landings. The error message is 'Enter the export weight as a number with a maximum of 2 decimal places.
#10: Verify the error message when no date is entered in the date fields during Edit landings. The error message is ‘Enter the date landed’
#11: Verify the error message when Date entered is not up to 7 days of the future during Edit landing.  The error message is ’Date landed can be no more than 7 days in the future'
#12: Verify the error message when Date entered is invalid Edit landing.  The error message is '‘Date landed must be a real date'
#13: Verify Black fish restrictions error message is displayed during Edit landing, when  Landing for product (BSS) is added between 1st Feb and 31st March.

#3277
#1. Verify the one product and one landing and more than one landing added for a CC document when clicked on Save and Continue and will navigate to next page
#2. Verify more than one product and at least one landing added for each product a CC document when clicked on Save and Continue and will navigate to next page3
#3. Verify products and landings added for a CC Document when clicked on Save and Continue and verify unsaved landing is lost and will navigate to next page
#4. Any unsaved landing details will be lost for CC document when browser or tab is cloaed
#5. Any unsaved landing details will be lost for CC document when back link, Home link or CC dashboard link is clicked
#6. Verify the one product and one landing and more than one landing added for a CC document when clicked on Save as draft and will navigate to CC dashboard page
#7. Verify more than one product and at least one landing added for each product for a CC document when clicked on Save as draft and will navigate to CC dashboard page
#8. Verify products and landings added for a CC Document when clicked on Save as Draft and verify unsaved landing is lost and will navigate to CC dashboard page

#3282
#1. Verify when only a single product is left then remove button hidden in action

#3283
#1: Verify the error message when Date entered is invalid Edit landing.  The error message is '‘Date landed must be a real date'
#2. Verify the error message when product is not selected from the product list in Ass landing page. the error is '‘Select a product from the list’
#3. Verify the message ‘Enter a Date landed to enable Vessel name’ is displayed when date is not entered in teh add landing details
#4. Verify the message ‘Enter a Date landed to enable Vessel name’ disappears when character is entered int he field ‘Vessel name or PLN’ field

#3285
#1. Verify the error message when click on ‘Save and Continue’ without any landings for any product (only one product)
#2. Verify the error message when click on ‘Save and Continue’ without any landings for any product (more than one product)
#3. Verify the error message when click on ‘Save and Continue’ no landings for some of the products (more than one product)

#3289
# Verify when we click on the edit button  from your landing then the landing details previously saved will get displayed in the form fields and the user focus should be moved from the landing row to the form

#3290
#1: Verify the Button re-labelled from 'Add landing' to 'Update landing' when in edit mode
#2: Verify the edited values are updated for the product while edit
#3: Verify landing details are refreshed with the latest values when user edits values and clicks on Edit button again on the same product
#4: Verify landing details are refreshed with the latest values when user edits values and clicks on Edit button again on the different product
#5: Verify if the same landing is removed while editing the landin, the landing fields should reset to default state
#6: Verify if the another landing is removed while editing the product, the landing fields should reset to default state
#7: Verify if the same product is removed while editing the landing details of the product, the landing fields should reset to default state
#8: Verify if the another product is removed while editing the landing details of the product, the landing fields should reset to default state
#9: Verify 'Add Landing' button is removed when 100 Landings are added in Add Landing product
#10:Verify 'Add Landing' button is displayed when any one landing out of 100 Landings are removed in Add Landing page
#11:Verify click on edit button of any landing when 100 Landings are present will display the ‘Update Landing’ button
#12:Verify click on change button in export summary page will navigate to Add landing page and Update landing button is displayed when 100 Landings are present for the CC

#3356
#1. Verify the Edit button is hidden in Add landing page when Vessel is overridden by Admin when ' 'vessel not found' is selected by exporter
#2. Verify the landing which is vessel overridden by admin is removed and added again the Edit button is displayed for that landing

#3296
#1.Verify clicking on 'change' button in Landing details table of C summary page will navigate to add a landing page
#2.Verify navigated to CC summary page to landing page its details in pre-populated in the form
#3.Errors shown on the summary page should continue to work as they currently do, then be navigated to the summary page to edit the landing page
#4.Verify When the user clicks on the "back button" it return back to add landing page, and details are the same as on the summary page

#3291
#1. Verify clicking on cancel button in Edit Mode in Add landings page will reset to default values of the landing fields. And 'Update Landing' button is chagned to 'Add Landing' button.
#2. Verify clicking on cancel button in Edit Mode in Add Landings page will reset to default values and remove any error message on the page if it exists.
#3  Verify clicking on cancel button in Edit Mode in Add landings page will reset to default values when invalid values are entered to update
