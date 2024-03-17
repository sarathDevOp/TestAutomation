#FI0-3583 - Add explanation text for product favourites & product ID
#Scenario1:Verify When user is /manage-favourites page then view this page shows the expand icon is displayed beside the(What are the product favourites?).
#Scenario2:Verify When user is /manage-favourites page then view this page then click on expand icon then display the what product favourites are text information
#Scenario3:Verify When user is /manage-favourites page then view this page then click on expand icon then display the what is product ID text information.
#Scenario4:Verify When user click on expand symbal display the hide icon beside(What are the product favourites?).
#Scenario5:Verify When user click on hide  symbal icon the information.
#Scenario6:Verify when click on hide icon default view is collapsed.
#
#
#FI0-3566 - Navigate back from product favourites page
#Scenario:Verify user on the /manage-favourites page navigated to the last page  in the Service.
#
#
#FI0-3562 - Remove a product favourite
#Scenario:When a user removes a product from the favorite list the products are removed from the list.
#
#FI0-3561	View & get list of product favourites
#Scenario1:Verify user is on /manage-favourites page and given mandatary details on that fields and click on 'Add productfavourite' button then display product details on product favourites list.                                           Scenario2:Verify user is on /manage-favourites page and given mandatory details on that fields and click on 'Add productfavourite' button then display the product id and product detalis your favourite products table.
#
#
#FI0-3556	Successfully add a product favourite and update the Product favourite list
#Scenario1: Users can add products to the favorite table, and once a product is added to the table the product fields are cleared.
#
#
#FI0-3555	Cancel adding a product favourite
#Scenario1:Verify user is on /manage-favourites page when click on ‘Cancel’ option in the form
#any values previously specified for a unsaved product favourite will be lost.
#Scenario2:Verify user is on /manage-favourites page when click on ‘Cancel’ option in the form
#Then the 4 fields on the form  re-set to their default (empty) value.
#Scenario3:Verify user is on /manage-favourites page when user has select different commodity code with the same product then click on 'Cancel' button, then the 4 fields on the form  re-set to their default (empty) value.
#Scenario4:Verify user is on /manage-favourites page when clicking on ‘Cancel’ option in the form
#any errors associated with the unsaved product is removed."
#
#
#FI0-3554	Moving away from page leading to lose of unsaved favourites
#Scenario 1: Moving away from page without having saved could lead to not saving a product
#
#FI0-3553	Display error(s) when trying to add a product favourite
#Scenario 1: Error when clicking to ‘Add product favourite’ without fully specifying product details
#
#FI0-3550	Create form with fields and text (BASE STORY)
#Scenario1:Verify user is on /manage-favourites page when user view able see the  'Common name or FAO code' field,
#'State' field, ' Presentation' field, 'Commodity Code' field,‘I can’t find my species’information.
#Scenario2:When I click on the Common name or FAO code field
#Then the list of species matching my input should be filtered in the results allowing user to select the correct specie
#Scenario3:Verify user in state field should be able to select the relevant State available for that specie.
#Scenario4:Verify user can not specifying Common name or FAO code Then State field will appear blank at this point, with default value ‘Select…
#Scenario5:Verify user select the relevant presentation available for that species & state.
#Scenario6:Verify user not specifying  the state field then presentation field will appear
#blank at this point, with default value ‘Select…’
#Scenario7:Verify user select 'Common name or FAO code' field,State' field,'Presentation' field, then
#commodity code will automatically displayed on that field.(if there is only 1 commodity code for that species, state,
#presentation combination)
#Scenario8:Verify user select 'Common name or FAO code' field,State' field,'Presentation' field,then
#commodity code Then user select   pick a Commodity code from the multiple options that are now available.
#(if there is more than1 commodity code for that species, state, presentation combination).
#Scenario9: Verify user is on /manage-favourites page then user  to expand the ‘I cannot find the species’ information
#Scenario10:Verify user to expand the ‘I cannot find the species’ information then display 'Species exempt from Catch Certificates' link.
#Scenario11:Verify click on 'Species exempt from Catch Certificates' link Then the following link should open in a new tab
#
#
#FI0-3548	Add option to navigate to favourites via the CC service header + create feature documentation
#Scenario1: Verify user is in the FES external application service and in catch certificate
#When user see service header display the favourites link.
#Scenario2: Verify user is in the FES external application service and in catch certificate
#Then click on favourites link then it navigated to the /manage-favourites page."
