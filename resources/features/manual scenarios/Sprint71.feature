#Tickets and Scenarios of Sprint 71 ( Direct Landing page - New design)
#3310  -- Automated
# 1.Verify I click on 'Yes, this export is a direct landing’ radio button in landings-options page then it be navigated to direct-landing page
#2. Verify I click on ‘No, this export is not a direct landing’radio button  in landings-options page Then it be navigated to add-landings page
#3. Verify no answer selected  in landings-options page then it should be displayed error message.

#3326  -- Manual
# 1.Verify provided details of a direct landing then I land on the /check-your-information  page and see that my transport type is ‘Fishing vessel’ is displayed."
#2.Verify  I land on the /check-your-information (summary) page I should not have the option to 'change' this transport type

#3343
#1.Verify I click on ‘Save and continue’ on the /what-export-journey page in direct landing page, then page  redirected to check-your-answers page
#2.Verify When I click on ‘Save and continue’ on the /what-export-journey in direct landing page, then  the transportation page is skipped.
#3.:Verify enter the URL manually for the transportation page of a direct landing cc application, Then it will navigated to summary page.
#4.Verify run the page guard in summary page ,if the date is in complete then page navigated to exporter dashboard.
#5.Verify  previously selected the not direct landings I am in the transportation selection options page,then transportation  options displayed.
#6.Verify previously selected the not direct landings, I am in the transportation selection options page,the option fishing vessel is not displayed.

#3308
#1. Verify landing option page is displayed when click on save and continue in the Add Landings page with some products
#2. Verify landing option page is displayed when there is a error message on the Add product page
#3. Verify the view of the landing options page
#4. Verify no default answer is selected when landed on the landing type page
#5. When any selection is made and click ed on Save and Continue.. coming to landing option page again will retain the old selection
#6. Clicking on the url directly when the document has at least one product
#7. Clicking on the url directly when the document has no product

#3312 --
#1. Verify landing option page is displayed when click on save and continue in the Add Landings page with some products
#2. Verify landing option page is displayed when there is a error message on the Add product page
#3. Verify the view of the landing options page
#4. Verify no default answer is selected when landed on the landing type page
#5. When any selection is made and click ed on Save and Continue.. coming to landing option page again will retain the old selection
#6. Clicking on the url directly when the document has at least one product
#7. Clicking on the url directly when the document has no product

#3324  - Automated
#1.Verify the error when no option is selected in Landing type confirmation page

#3327
#1. Create a CC with non direct landing and navigate to Check your answers page Click on change link of any landings will navigate back to add landings page
#2. Create a CC with direct landing and navigate to Check your answers page Click on change link of any landings will navigate back to direct landing
#3. Create a CC with direct landing and navigate to Check your answers page Click on change link of any landings will navigate back to direct landing. update the landing details and verify Check your answers page shows updated landing details
#4. Create a CC with non direct landing and navigate to Check your answers page Click on change link of any landings will navigate back to add landings page. update the landing details and verify Check your answers page shows updated landing details
#5. Verify that transportation details are fishing vessel in check your answers page for direct landing
#6. Verify all vessels are same for direct landings in summary page

#3319
#1.Create a cc with direct landing and come back to landing type page and change to ‘No’ for Non direct landing, In landing type confirmation say again No - will lead to direct type page.
#2.Create a cc with direct landing and when the user returns later by selecting ‘no’ in landing type confirmation page to the direct-landings page then all previously saved landing details will be retained
#3.Create a cc with non direct landing and come back to landing type page and change to ‘Yes’ for direct landing. In landing type confirmation say again No - will lead to direct type page.
#4.Create a cc with non direct landing and come back to landing type page and change to’ Yes’ for direct landing. In landing type confirmation say again No - will lead to direct type page click No in the non direct landing page, data should be retained
#5.Verify cancel button on landing type confirmation page will navigate to landing type page

#3311
#1. Create a new CC and Navigate to landing type page. click on back link without selection in Landing type page, will navigate to Add Product Page. coming back to landing type page display no selection
#2. Create a new CC and Navigate to landing type page. click on back link with Yes selection in Landing type page, will navigate to Add Product Page. coming back to landing type page display no selection
#3. Create a new CC and Navigate to landing Type page. click on back link with 'No' selection in Landing type page, will navigate to Add Product Page. coming back to landing type page display nothing option selected
#4. Create a new CC and Navigate to landing Type page. save as draft without selection in Landing type page will navigate to CC dashboard page, coming back to landing type page display no selection
#5. Create a new CC and Navigate to landing Type page. save as draft with Yes selection in Landing type page will navigate to CC dashboard page, coming back to landing type page display no selection
#6. Create a new CC and Navigate to landing Type page. save as draft with 'No' selection in Landing type page will navigate to CC dashboard page, coming back to landing type page display no selection

#3323
#1. Verify clicking on Save as draft entering valid landing data, system navigates to CC dashboard page
#Clicking on Save as draft with valid data is not navigating to CC Dashboard. Displaying error

#3309
#1.Given I am on the /landing-type page
#And there is no answer selected on the page
#When I click on ‘Save and Continue’
#Then I want to be thrown an error
#2.When I then specify an answer (i.e. select the ‘Yes…’ or ‘No…’ radio buttons)
#Then the error message will disappear
#3.Remove error from being displayed when clicking on the back button and back to landing type screen again
#When the error message will disappear


#3317
#1.The Story was tested on a TST-green environment with below SCs.
#When I land on the /direct-landing page
#Then I will be able to view and specify the necessary details of my direct landing (see attached design)
#The field ‘catch area’ will have the default value of 'FAO27'.
#The vessel field will be a pre-selected list (same as on the /add-landings page)
#Validation for these fields will be covered in a separate ticket (3321) we will test/cover in 3321"
#2. Given I am on the /direct-landing page
#When I enter the export weight for a product in the product table
#Then the ‘Total export weight’ figure should be recalculated and display the new total export weight"
