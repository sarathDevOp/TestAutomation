#Tickets and Scenarios of Sprint 72 ( Direct Landing page - New design)
#F10-3349
# 1:Verify user is on check your answers page and user previously picked 'vessel not found' in direct landing page
#Then admin has overridden vessal then  the change links on the ‘landing details’ section to be removed on the summary page.
#2:Verify user is on check your answers page and user previously picked 'vessel not found' in non-direct landing page
#Then admin has overridden vessal then  the change links on the ‘landing details’ section to be not removed on the summary page.
#3:Verify User is on the check-your-answers page and And the admin has overridden  vessel for my direct landing
#When user click on a change link on the exporter details section of the summary page then page redirected to the  relevant page.
#then click on ‘save and continue’ to along these pages to go up to and including the Add exporter details page then click on 'save
#and continue' on Add exporter details page,then user navigated to the check-your-answers page.
#4:Verify User is on the check-your-answers page and And the admin has overridden  vessel for my non direct landing
#When user click on a change link on the exporter details section of the summary page then page redirected to the  relevant page.
#then click on ‘save and continue’ to along these pages to go up to and including the Add exporter details page then click on 'save
#and continue' on Add exporter details page,then user navigated to the check-your-answers page.
#5:Verify user is on the /check-your-answers page when user click on the change links against the landing type row
#then user land  on the /landing-type page,then user continue with Direct Landing as  chosen option and click on
#‘save and continue’ button then user is navigated to  check-your-answers page.
#6:Verify user is on the /check-your-answers page in non direct landing page when user click on the change links against the landing type row
#then user land  on the /landing-type page,then user continue with Non-Direct Landing as  chosen option and click on
#‘save and continue’ button then user is navigated to  add landing page.
#7:Verify user is on the /check-your-answers page and And at least 1 of  vessels has been overridden and user
#landing is a direct landing when user view the  check-your-answers page then display the  "Landings amended and
#authorised by service support cannot be changed".
#8:Verify user is on the /check-your-answers page and And at least 1 of  vessels has been overridden and user
#landing is a direct landing when user view the  check-your-answers page then display the  ""Landings amended and authorised by
#service support cannot be changed but can be removed”

#F10-3403
#1:Verify create a simple CC with Direct landing up to Whose waters page ,then  click on back button , page is redirected to direct landing page.

#F10-3318
#1a.Verify  When user do not enter a date in the ‘Date landed' field,Then click On Save &Continue Button display
#the Then display see an error ‘Enter the date landed’.
#1b(I): Verify When user enter a date which is further than 7 days in the future then click on Save & Continue buttton.
#display ’Date landed can be no more than 7 days in the future' error.
#1b(II):Verify When user enter a date which is further than 7 days in the future then click on Save as Draft button
#display ’Date landed can be no more than 7 days in the future' error.
#1c(I):Verify When I attempt to enter a date which is an invalid date  Then click on Save and Continue button,
#display the ‘Date landed must be a real date’ error message.
#1c(II):Verify When I attempt to enter a date which is an invalid date  Then click on Save as Draft button,
#display the ‘Date landed must be a real date’ error message.
#1d(I):Verify valid ‘Vessel name or PLN’ from the vessel list,Then Click On Save and Continue Button,
#display ‘Select a vessel from the list’ error message.
#1d(II):Verify valid ‘Vessel name or PLN’ from the vessel list,Then Click On Save and as Draft Button,
#display ‘Select a vessel from the list’ error message.
#1e: Attempting to choose Vessel name or PLN before Date landed (EXISTS ON /add-landings PAGE)
#Error: ‘Enter a Date landed to enable Vessel name.
#1f(I):Verify user  chose a date between 1st February and 31st March then   specify the product ‘European seabass (BSS)'
#then   click on Save and continue button,display error message.
#1f(II):Verify user  chose a date between 1st February and 31st March then   specify the product ‘European seabass (BSS)'
#then   click on Save as Draft button,display error message.
#1g(I): Verify Unlicensed vessel (EXISTS ON /add-landings PAGE)then click on Save and Continue Button
#Then display error “Date landed must correspond to when the vessel was licensed.
#1g(II):Verify Unlicensed vessel (EXISTS ON /add-landings PAGE)then click on Save as Draft Button
#Then display error “Date landed must correspond to when the vessel was licensed.

#F10-3314
# 1.Verify user is on direct landing page then navigate  back to navigate to landing type page then Change the landing
#type to ‘No’and Click 'yes' in the confirmation page ,System should go to Add landing page Product is present but
#No landing data is saved
#2..Verify user is on non landing page then navigate  back to navigate to direct landing type page then Change the landing
#type to ‘Yes’and Click 'yes' in the confirmation page ,System should go to direct  landing page product is present
#No direct landing data is saved.

#F10-3321
# 1a: Verify  letters are entered in export weight and click on Save as draft/Save as Continue button  then display
#‘Enter the export weight as a number, like 500 or 500.50’ error message.
#1b: Verify error message when more than 2 decimals entered in export weight then click on
#Save as draft/Save as Continue button then display ‘Enter the export weight as a number with a maximum of 2 decimal places' error message.
#1c: Verify the error message when export weight is empty then click on Save as draft/Save as Continue button
#then display the  ‘Enter the export weight for [species], [state], [presentation], [commodity code]’ error message.
#1d:Verify the error message when export weight is 0 then click on  draft/Save as Continue button
#Then display 'Enter the export weight as a number greater than 0' errror messag

#F10-3336
# 1: Create a CC with product details and save before direct landing details. Access DL url will navigate to exporter dashboard page
#2: Create a CC with DL details and save in DL page. Access DL url will navigate to Direct landing page and verify DL details.
#3: Create a CC with DL and navigate to summary page. Access DL url will navigate to Direct landing page and verify the DL details.
#4: Clone a completed CC with DL details. Access DL URL will navigate to Direct landing page and verify the DL details.

#F10-3328
# 1: Verify that summary page shows Yes for CC document with Direct landing
#2: Verify that summary page shows ‘No’ for CC documents with Non Direct Landing
#3: Create a CC document with direct landing, click on Change link in Summary page will navigate to Landing option page
#4: Change the direct landing to Non direct landing and Verify the option is ‘No’ in the Summary page
#5: Create a CC document with Non direct landing, click on Change link in Summary page will navigate to Landing option page
#6: Change the Non direct landing to direct Landing and Verify that the option is ‘Yes’ in the summary page

#F10-3344
# 1.Verify user try to navigate to /landings-type-confirmation page of my CC application
#When the page tries to load the user will be navigated user to the CC dashboard page.
