#Feature: Language preference selection option
#  As an Exporter,
#  I want to be able to select my language option
#  So that i can create a CC document in my preferred language
#
#  Scenario:1 Validate default language for error content on /copy-this-storage-document page
#  Given I am viewing errors on the/copy-this-storage-document page
#  When I have not selected language preference
#  Then all error content is displayed in English by default
#
#  Scenario:2 Validate Error content language for the chosen option
#  Given I am viewing errors on the /copy-this-storage-document page
#  When I have selected a language as welsh
#  Then the error content should be displayed in welsh language
#
#  @FI0-4448
#  Scenario:1 validate the default language selection for error content
#  Given I am viewing errors on the /copy-void-confirmation page
#  When I have not selected any radio button
#  Then Click on save and continue
#  And all error content is displayed in English by default
#
#  Scenario:2 Validate Error content language for the chosen option
#  Given I am viewing errors on the /copy-void-confirmation page
#  When I have selected a language As welsh
#  Then the error content should be displayed in welsh language
#
#  @FI0-4443:
# Scenario: 1 Validate the Default language
#  Given I on any page of the application in the SD journey
#  When I select Welsh
#  Then I will see the ‘need help’ section content at the bottom of the SD section translated in Welsh (Note 1) & beta banner content (that is: This is a new service – your feedback will help us to improve it )
#
#  @FI0-4444:
# Scenario: 1Validate the Default language as english on the void-this-storage-document
#  Given I am viewing the content on the Void confirmation page
#  When I have not selected language preference
#  Then all content is displayed in English
#
# Scenario: 2 Validate the chosen Language
#  Given I am viewing the Void confirmation page
#  When I have selected a language
#  Then the content is displayed in that language I have chosen(welsh or english)
#
#  #FI0-4449 SD: On the Clone page for SD, the content is displayed in the language I have selected (Welsh/Eng)
#  Scenario: 1 Validate the Default language - On the Copy this SD page
#  Given I am viewing Clone page for SD
#  When I have not selected language preference
#  Then all content is displayed in English
#
# Scenario: 2 Verify the Language chosen as welsh On the Copy this SD page
#  Given I am viewing the Clone page for SD
#  When I have selected a language as welsh
#  Then the page content is displayed in that language I have chosen
#
# Scenario: 3 Verify Default language as english On the Copy & void confirmation page
#  Given I am viewing Clone & void confirmation page for SD
#  When I have not selected language preference
#  Then all content is displayed in English
#
# Scenario: 4 Verify the Language chosen as welsh/english On the Copy & void confirmation page
#  Given I am viewing the Clone page for SD
#  When I have selected a language
#  Then the all page content is displayed in that language I have chosen
#
# Scenario:5 Verify the Notification message post successful cloning
#  Given I have just cloned my SD application
#  When I get redirected to the /progress page of my newly cloned SD application
#  And I see the Important notification banner at the top of the /progress page
#  Then the content of this banner should displayed in that language I have chosen(welsh/english)
#
# @FI0-4451
# Scenario: 1 Validate the Default language as english
#  Given I am viewing the Void confirmation page
#  When I have not selected language preference
#  Then all content is displayed in English
#
# Scenario: 2 Validate the Language chosen on the Void confirmation page
#  Given I am viewing the Void confirmation page
#  When I have selected a language welsh/english
#  Then the content is displayed in that language I have chosen
#
# @FI0-4452
#  Scenario: 1 Validate the Default language as english
#  Given I am viewing errors on the /delete-this-draft-storage-document page
#  When I have not selected language preference
#  Then all error content is displayed in English
#
# Scenario: 2 Validate the Language chosen as welsh
#  Given I am viewing errors on the  /delete-this-draft-storage-document page
#  When I have selected a language
#  Then the error content should display in that language I have chosen
#
# @FI0-4453-
# Scenario: 1 Validate the Default language as english
#  Given I am viewing the footer of the SD dashboard page or any of the pages in the SD application journey  (that is add reference page to application submission page)
#  When I have not selected a preferential language
#  Then all content is displayed in English
#
# Scenario: 2 Verify the Language chosen as welsh/english
#  Given I am viewing the footer of the SD dashboard page or any of the pages in the SD application journey  (that is add reference page to application submission page)
#  When I have selected a language
#  Then the page content should be display in that language I have chosen
#
# @FI0-4458-
# Scenario: 1 Validate the Default language as english
#  Given I am viewing the CC Journey Dashboard page
#  When I have not selected language preference
#  Then all content is displayed in English
#
# Scenario: 2 Validate the Language chosen
#  Given I am viewing the CC Journey Dashboard page
#  When I have selected a language
#  Then the page content is displayed in that language I have chosen
#
#   @FI0-4463
# Scenario: 1 Validate the  Default language as english
#  Given I am viewing the CC DL /CC Manual Entry / CC Upload progress page
#  When I have not selected language preference
#  Then all content is displayed in English
#
# Scenario: 2 Validate the Language chosen
#  Given I am viewing the CC DL /CC Manual Entry / CC Upload progress page
#  When I have selected a language
#  Then the page content is displayed in that language I have chosen
#
# @FI0-4470
# Scenario: 1 Validate the Default language as english
#  Given I am viewing content on the “/add-your-reference” page or have been presented with an error message on this page
#  When I have not selected language preference
#  Then all error content is displayed in English
#
# Scenario: 2 Validate the Language chosen
#  Given I am viewing content on the /add-your-reference page or have been presented with an error message on this page
#  When I have selected a language as welsh
#  Then the error content should be display in that language I have chosen
#
# @FI0-4471
# Scenario 1: Validate the Default language as english
#  Given I am viewing the “ Exporter Details Page”
#  When I have not selected language preference
#  Then all content is displayed in English
#
# Scenario 2: Validate the Language chosen
#  Given I am viewing the “ Exporter Details Page”
#  When I have selected a language
#  Then all content is displayed in that language I have chosen
## Exceptions:(Reference data,PDF templates,Error messages)
#
# @FI0-4476
#  Scenario: 1 Validate the Default language as english
#  Given I am viewing the “/what-export-journey” page
#  When I have not selected language preference
#  Then all content is displayed in English
#
# Scenario 2: Validate the Language chosen
#  Given I am viewing the “/what-export-journey” page
#  When I have selected a language
#  Then all content is displayed in that language I have chosen
#
# @FI0-4501
# Scenario: 1 Validate the Default language as english
#  Given I am viewing the What is the exporter’s address page
#  When I have not selected language preference
#  Then all content is displayed in English
#
# Scenario: 2 Validate the Language chosen
#  Given I am viewing the What is the exporter’s address page
#  When I have selected a language
#  Then all content is displayed in that language I have chosen
#
# @FI0-4506
# Scenario: 1 Validate the Default language as english
#  Given I on the /landings-type-confirmation page
#  When I have not selected language preference
#  Then all  content on this page is displayed in English
#
# Scenario: 2 Validate the Language chosen
#  Given I am on the /landings-type-confirmation page
#  When I have selected a language
#  Then the page content is displayed in that language I have chosen
#
#  @FI0-4508
#  Scenario: 1 Validate the Default language
#    Given I on the /whose-waters-were-they-caught-in page
#    When I have not selected language preference
#    Then all  content on this page is displayed in English
#
# Scenario: 2 Validate the  Language chosen
#   Given I am on the /whose-waters-were-they-caught-in page
#   When I have selected a language
#   Then the page content is displayed in that language I have chosen
#
# @FI0-4462
# Scenario:1 Validate the Default language as english
#  Given I am viewing the CC landing entry page
#  When I have not selected language preference
#  Then all content is displayed in English
#
#  Scenario: 2Validate the Language chosen
#    Given I am viewing the CC landing entry page
#    When I have selected a language
#    Then the page content is displayed in that language I have chosen
#
# @FI0-4502
# Scenario: 1 Validate the Default language
#  Given I on any page of the application in the CC journey
#  When I have not selected language preference
#  Then all  ‘need help’ section content at the bottom of the CC section, the top header bar & beta banner is displayed in English
#
#  Scenario:2 Validate the Language chosen
#    Given I am on any page of the application in the CC journey
#    When I have selected a language
#    Then the page content is displayed in that language I have chosen
#
#  @FI0-4461
#  Scenario 1: Default language
#    Given I am viewing the 'Need Help' side content of CC dashboard page (that is add reference page to application submission page)
#    When I have not selected a preferential language
#    Then all content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing the 'Need Help' side content of CC dashboard page (that is add reference page to application submission page)
#    When I have selected a language
#    Then the content (highlighted in the attached UI design*) is displayed in that language I have chosen
#
#  @FI0-4473
#  Scenario 1: Default language
#    Given I am viewing the “/what-are-you-exporting” page
#    When I have not selected language preference
#    Then all content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing the “ /what-are-you-exporting” page
#    When I have selected a language
#    Then all content is displayed in that language I have chosen
#
#  @FI0-4474
#  Scenario 1: Default language
#    Given I am viewing the “/direct-landing” page
#    When I have not selected language preference
#    Then all content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing the “/direct-landing” page
#    When I have selected a language
#    Then all content is displayed in that language I have chosen
#
#  @FI0-4478
#  Scenario 1: Default language
#    Given I am viewing errors on the /add-exporter-details page
#    When I have not selected language preference
#    Then all error content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing errors on the /add-exporter-details page
#    When I have selected a language
#    Then the error content is displayed in that language I have chosen
#
#  @FI0-4479
#  Scenario 1: Default language
#    Given I am viewing the “/whose-waters-were-they-caught-in” page
#    When I have not selected language preference
#    Then all error content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing the “/whose-waters-were-they-caught-in” page
#    When I have selected a language
#    Then all error content is displayed in that language I have chosen
#
#  @FI0-4480
#  Scenario 1: Default language
#    Given I am viewing errors on the /what-export-journey page
#    When I have not selected language preference
#    Then all error content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing errors on the /what-export-journey page
#    When I have selected a language
#    Then the error content is displayed in that language I have chosen
#
#  @FI0-4493
#  Scenario 1: Default language
#    Given I am viewing errors/notifications on the /what-are-you-exporting page
#    When I have not selected language preference
#    Then all error content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing errors/notifications on the /what-are-you-exporting page
#    When I have selected a language
#    Then the error content is displayed in that language I have chosen
#
#  @FI0-4494
#  Scenario 1: Default language
#    Given I am viewing errors/notifications on the /direct-landing page
#    When I have not selected language preference
#    Then all error content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing errors/notifications on the /direct-landing page
#    When I have selected a language
#    Then the error content is displayed in that language I have chosen
#
#  @FI0-4505
#  Scenario 1: Default language
#    Given I am viewing errors on the What exporters address page
#    When I have not selected language preference
#    Then all error content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing errors on the What exporters address page
#    When I have selected a language
#    Then the error content is displayed in that language I have chosen
#
#  @FI0-4507
#  Scenario 1: Default language
#    Given I am viewing errors/notifications on the /landings-type-confirmation page
#    When I have not selected language preference
#    Then all error content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing errors/notifications on the /landings-type-confirmation page
#    When I have selected a language
#    Then the error content (see attached UI design*) is displayed in that language I have chosen
#
#  @FI0-4516
#  Scenario 1: Default language
#    Given I am viewing errors/notifications on the /check-your-information page
#    When I have not selected language preference
#    Then all error & notifications content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing errors/notifications on the /check-your-information page
#    When I have selected a language
#    Then the error & notifications content
#
#  @FI0-4517
#  Scenario 1: Default language
#    Given I am viewing the “/check-your-information” page
#    When I have not selected language preference
#    Then all content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing the “/check-your-information” page
#    When I have selected a language
#    Then all content is displayed in that language I have chosen
#
#  @FI0-4526
#  Scenario 1: Default language
#    Given I am viewing content on the ‘What do you want to do’ page
#    When I have not selected language preference
#    Then all error content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am content on the ‘What do you want to do’ page
#    When I have selected a language
#    Then the error content is displayed in that language I have chosen
#
#  @FI0-4528
#  Scenario 1: Default language
#    Given I am viewing the CC copy this catch certificate page
#    When I have not selected language preference
#    Then all content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing the CC copy this catch certificate page
#    When I have selected a language
#    Then the content is displayed in that language I have chosen
#
#  Scenario 3: Default language
#    Given I am viewing the CC /copy-void-confirmation page
#    When I have not selected language preference
#    Then all content is displayed in English
#
#  Scenario 4: Language chosen
#    Given I am viewing the CC  /copy-void-confirmation page
#    When I have selected a language
#    Then the content is displayed in that language I have chosen
#
#  @FI0-4530
#  Scenario 1: Default language
#    Given I am viewing the errors on CC copy this catch certificate page
#    When I have not selected language preference
#    Then all content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing the errors on CC copy this catch certificate page
#    When I have selected a language
#    Then the content is displayed in that language I have chosen
#
#  Scenario 3: Default language
#    Given I am viewing the errors on CC /copy-void-confirmation page
#    When I have not selected language preference
#    Then all content is displayed in English
#
#  Scenario 4: Language chosen
#    Given I am viewing the errors on CC /copy-void-confirmation page
#    When I have selected a language
#    Then the content is displayed in that language I have chosen
#
#  @FI0-4550
#  Scenario 1: Default language
#    Given I am viewing the “/add-landings” page
#    When I have not selected language preference
#    Then all content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing the “/add-landings” page
#    When I have selected a language
#    Then all content is displayed in that language I have chosen
#
#  @FI0-4554
#  Scenario 1: Default language
#    Given I am viewing errors/notifications on the /add-landings page
#    When I have not selected language preference
#    Then all error content is displayed in English
#
#  Scenario 2: Language chosen
#    Given I am viewing errors/notifications on the /add-landings page
#    When I have selected a language
#    Then the error content (see attached UI design*) is displayed in that language I have chosen
#
#  @FI0-4665-CC:
#  Scenario: 1 Verify error are displayed on CC progress page of Direct landing type when continue and mandatory sections are not complete
#    Given I am creating new CC journey
#    And I select Direct landing and click on continue
#    And I am on the progress page
#    And all mandatory sections are NOT ‘Complete’
#    When I click check your answers and submit button
#    Then errors displayed by default English
#    When I am switching on English to Welsh language
#    Then errors displayed in Welsh
#
#  Scenario: 2 Verify error are displayed on CC progress page of Manual entry type when continue and mandatory sections are not complete
#    Given I am creating new CC journey
#    And I select Manual entry and click on continue
#    And I am on the progress page
#    And all mandatory sections are NOT ‘Complete’
#    When I click check your answers and submit button
#    Then errors displayed by default English
#    When I am switching on English to Welsh language
#    Then errors displayed on Welsh
#
#  Scenario: 3 Verify error are displayed on CC progress page of File upload type when continue and mandatory sections are not complete
#    Given I am creating new CC journey
#    And I select CSV file upload and click on continue
#    And I am on the progress page
#    And all mandatory sections are NOT ‘Complete’
#    When I click check your answers and submit button
#    Then errors displayed by default English
#    When I am switching on English to Welsh language
#    Then error messages displayed on Welsh.
#
#  @FI0-4718-PS:
#  Scenario: 1 Verify errors are displayed when clicking on button if all mandatory sections are not ‘Complete’ on PS application
#    Given I am creating new PS journey
#    And I am on the progress page
#    And all mandatory sections are NOT ‘Complete’
#    When I select the  ‘Check your answers and submit’ button
#    Then error messages displayed in English
#
#  Scenario: 2 Verify errors are displayed in welsh when clicking on button if all mandatory sections are not ‘Complete’ on PS application Welsh translation
#    Given I am creating new PS journey
#    And I am on the progress page
#    And all mandatory sections are NOT ‘Complete’
#    When I select the  ‘Check your answers and submit’ button
#    And I am switching on English to Welsh language
#    Then error messages displayed in Welsh
#
#  @FI0-4719-SD:
#Scenario: 1 Verify errors are displayed when clicking on button if all mandatory sections are not ‘Complete’ on SD application
#    Given I am creating new SD journey
#    And I am on the progress page
#    And all mandatory sections are NOT ‘Complete’
#    When I select the  ‘Check your answers and submit’ button
#    Then error messages displayed in English
#
#  Scenario: 2 Verify errors are displayed in welsh when clicking on button if all mandatory sections are not ‘Complete’ on SD application Welsh translation
#    Given I am creating new SD journey
#    And I am on the progress page
#    And all mandatory sections are NOT ‘Complete’
#    When I select the  ‘Check your answers and submit’ button
#    And I am switching on English to Welsh language
#    Then error messages displayed in Welsh
