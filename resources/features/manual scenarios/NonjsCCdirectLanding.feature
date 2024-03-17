#@Manual
#Feature: Creating scenarios for creating CC using direct landing option when javascript is disabled
#  As an Exporter,
#  I want to be able to select the direct landing option while creating a CC when JS is disabled
#  So that i can create a CC document
#
#@FI0-5095
#Scenario 1: Rendering the page
#Given I land on the /direct-landing page
#And I do not have javascript enabled
#Then the page will be rendered as per attachment
#
#Scenario 2: Specify direct landing details
#Given I have navigated the /direct-landing page
#And I do not have javascript enabled
#When the page is rendered
#Then the can specify the Date Landed
#And the can specify the Catch area
#And the can specify the Vessel name or PLN
#
#Scenario 3: Welsh translation
#Given I land on the /direct-landing page
#And I do not have javascript enabled
#When I am on the Welsh translation or already selected Welsh previously
#Then the content on this page will be translated into Welsh
#
#Scenario 4: Hyperlinks
#Given I have navigated to the /direct-landing page
#And I do not have javascript enabled
#When I click on the Back link
#Then I am navigated to the Navigates user to the /what-are-you-exporting page
#When I click on the Back your progress link
#Then I am navigated to the Navigates user to the /progress page
#
#
#@FI0-5120
#Scenario 1: Rendering the page
#Given I land on the /add-landings page
#And I do not have javascript enabled
#Then the page will be rendered
#
#Scenario 2: Welsh translation
#Given I land on the  /add-landings page
#And I do not have javascript enabled
#When I am on the Welsh translation or already selected Welsh previously
#Then the content on this page will be translated into Welsh
#
#Scenario 3: Hyperlinks
#Given I have navigated to the /direct-landing page
#And I do not have javascript enabled
#When I click on the Back link
#Then I am navigated to the Navigates user to the /what-are-you-exporting page
#When I click on the Back your progress link
#Then I am navigated to the Navigates user to the /progress page
#
