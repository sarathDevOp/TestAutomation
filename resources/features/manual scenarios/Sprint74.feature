#FI0-3517	Send vessel size from CS to CM for Catch Certificate applications
# "Scenario1:Given a CC application is submitted in the FES serviceWhen the payload is sent from CS to CM (as per existing functionality)Then this should include the vessel size (NEW)
#
#Scenario 2:Given a CC application is submitted in the FES serviceAnd the case type 2 is 'Pending Landing data' so the service is searching for retrospective updates (as per existing functionality)When retrospective validation is run and the results are sent to CM (as per existing functionality)Then this should include the vessel size (NEW)"
#FI0-3480	CC: Provide info when user selects external pointing URLs	"Scenario1:Verify user clicks on 'manage account' hyperlink in all pages in CC journey then link text displayed assame and not navigated to new tab.
#
#Scenario2:Verify user clicks on 'feedback' hyperlink in all pages in CC journey then link text displayed as
#same and navigated to new tab.
#
#Scenario3:Verify user clicks on 'Open Government License' hyperlink in all pages in CC journey then link text displayed assame and navigated to new tab.
#
#Scenario4:Verify user clicks on 'Crown copyright' hyperlink in all pages in CC journey then link text displayed assame and navigated to new tab.
#
#Scenario5:Verify user clicks on 'Exporter Guidance on exporting fish' hyperink in Exporter dashboard in CC journey then link text displayed a same and navigated to new tab.
#
#Scenario6:Verify user clicks on 'Prior notification form' hyperlink in Exporter dashboard in CC journey then link text displayed assame and navigated to new tab.
#
#Scenario7:Verify user clicks on 'Pre-landing declaration' hyperlink in Exporter dashboard in CC journey then link text displayed assame and navigated to new tab
#
#Scenario8:Verify user clicks on 'Create a UK processing statement' hyperlink in Exporter dashboard in CC journey then link text displayed as same and navigated to new tab
#
#Scenario9:Verify user clicks on 'Create a UK storage document' hyperlink in Exporter dashboard in CCjourney then link text displayed as same and navigated to new tab
#
#Scenario10:Verify user clicks on 'Get help exporting fish from the UK' hyperlink in all pages in CC journey then link text displayed as same and navigated to new tab
#
#Scenario11:Verify user clicks on 'Species exempt from Catch Certificates' hyperlink in add product page in CC journey then link text displayed as same and navigated to new tab."
#FI0-3464	CC/PS/SD: Validate Country field for manually entered addresses	Scenario1:Ensure that entered country names are vaild against the list of counties held within the reference data reader.
#FI0-2571	SD (Add transport details): Change date picker and add 3 date input fields	"
#
#
#
#Scenario1:Verify User add-transportation-details-truck  page of the SD application then
#using one of two options 1.date picker 2.manually enter data into the 3 input fields
#and hint text with an example table.
#
#Scenario2:Verify User add-transportation-details-plane of the SD application then user using
#one of two options 1.date picker 2.manually enter data into the 3 input fields
#and hint text with an example table.
#
#Scenario3:Verify User add-transportation-details-train of the SD application then user using
#one of two options 1.date picker 2.manually enter data into the 3 input fields
#and hint text with an example table.
#
#Scenario4:Verify User add-transportation-details-container-vessel of the
#SD application then user using one of two options 1.date picker 2.manually
#enter data into the 3 input fields  and hint text with an example table.
#
#Scenario5:Verify User add-transportation-details-truck/add-transportation-details-plane
#/add-transportation-details-train /add-transportation-details-container-vessel
#of the SD application then user verify Calendar picker to be defaulted to today’s date
#if no date is entered in the 3 input fields.
#
#Scenario6:Verify User add-transportation-details-truck/add-transportation-details-plane/
#add-transportation-details-train /add-transportation-details-container-vessel
#page of the SD application then user selected date from the date picker
#calender then the date input fields should be updated with the selection made.
#
#Scenario7:Verify User add-transportation-details-truck/add-transportation-details-plane/
#add-transportation-details-train /add-transportation-details-container-vessel page of the
#PS application When user enter a full date using the 3 input fields
#and the open the calendar
#then the calendar will be defaulted to the date specified in the 3 input field.
#
#Scenario8:Open exitsting SD  navigated back to User  add-transportation-details-truck
#/add-transportation-details-plane/add-transportation-details-train /
#add-transportation-details-container-vessel page PS application then verify
#clicking on date picker icon will show the calendar and will highlight the day
#which is already entered.
#
#Scenario9:Open exitsting SD  navigated back to User  add-transportation-details-truck
#/add-transportation-details-plane/add-transportation-details-train
#/add-transportation-details-container-vessel page of the SD application then verify
#three input fields and will highlight the day which is already entered .
#
#Scenario10:Verify User dd-transportation-details-truck/add-transportation-details-plane
#/add-transportation-details-train /add-transportation-details-container-vessel  page of the SD application When user user not selected data picker and not selected any data on data fields and click on save and Continue button then was not redirected
#to next page."
#FI0-2570	SD (Add product): Change date picker and add 3 input fields	"Scenario1:Verify User /add-product-to-this-consignment page of the SD application then userable to view the'Date product entered the UK' using one of two options 1.date picker 2.manually enter data into the 3 input fieldsand hint text with an example table.
#
#Scenario2:Verify User /add-product-to-this-consignment page of the SD application then user
#able to view the 'Date product entered the UK' then verify No default value in the existing 3 input fields.
#
#Scenario3:Verify User /add-product-to-this-consignment page of the SD application then user
#able to view the 'Date product entered the UK' then verify Calendar picker to be defaulted to today’s date if no date is entered in the 3 input fields.
#
#Scenario4:Verify User /add-product-to-this-consignment page of the SD application then able to view the 'Date product entered the UK'
#user selected date from the date picker calender then the date input fields should be updated with the selection made.
#
#Scenario5:Verify User /add-product-to-this-consignment page of the PS application When user
#able to view the 'Date product entered the UK' user enter a full date using the 3 input fields and the open the calendarthen the calendar will be defaulted to the date specified in the 3 input field.
#
#Scenario6:Open exitsting SD  navigated back to User add-product-to-this-consignment page of the PS application then verify clicking on date picker icon will show the calendar and will highlight the day which is already entered.
#
#Scenario7:Open exitsting SD  navigated back to User add-product-to-this-consignment page of the PS application then verifythree input fields and will highlight the day which is already entered .
#
#Scenario8:Verify User /add-product-to-this-consignment page of the PS application When user
#able to view the 'Date product entered the UK' user enter a full date using the 3 input fields
#and the open the calendar then the calendar will be defaulted to the date specified in the 3
#input field then enter Mandatory data remaning  fields then click on Save and Continue button navigated to next page.
#
#Scenario9:Verify User /add-product-to-this-consignment page of the PS application When user able to view the 'Date product entered the UK' user not
#selected data picker and not selected any data on data fields and click on save and Continue button then was not redirected to next page.
#
#"
#FI0-2569	PS: Change date picker and add 3 input fields	"Scenario1:Verify User /add-health-certificate page of the PS application able to view the Health certificate date
#using one of two options 1.date picker 2.manually enter data into the 3 input fields and hint text with an example table.
#
#Scenario2:Verify User /add-health-certificate page of the PS application then user selected date from the date picker calenderThen the date input fields should be updated with the selection made.
#
#Scenario3:Verify User /add-health-certificate page of the PS application When user enter a full
#‘Health certificate date’ using the 3 input fields and the open the calendar then the calendar will be defaulted to thedate specified in the 3 input field.
#
#Scenario4::Verify User /add-health-certificate page of the PS application When user enter ‘Health certificate date’only on date and month fields then calender will be not  defaulted to the in the 3 input field.
#
#Scenario5:Verify User /add-health-certificate page of the PS application When user enter ‘Health certificate date’zero in 3 input fields then calender will be not  defaulted to the in the 3 input field."
