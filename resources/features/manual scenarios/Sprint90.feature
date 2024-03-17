#FI0-4808-Send email notification when processing does not complete for CC application post Offline Validation
#  Scenario:1Verify that Email Notification is sent when there is any technical failure while submitting the CC Document
#  Given my CC application is in a ‘Pending’ status as it went through offline validation
#  When the offline processing could not complete and as a result the application status changes to ‘Failed'
#  Then An email Notification should be received in exporter's mailbox  from mailbox ( noreply.managefishexports@notifications.service.gov.uk ) that  CC has failed
#
#FI0-4800-Scenario:2 verify if email notification is received for failed submission every resubmit when a failed CC document which goes through offline valiation is resubmitted
#  Given CC application is in a ‘Pending’ status as it went through offline validation
#  When the offline processing completes
#  And the application status changes to ‘Failed'
#  When the failed document is resubmitted
#  Then An email Notification should be received for every resubmit in exporter's mailbox  from mailbox ( noreply.managefishexports@notifications.service.gov.uk ) that  CC has failed
#
#  Scenario:3 verify if email notification is received for successful submission for resubmit of failed CC document after updating with valid landings
#  Given CC application is in a ‘Pending’ status as it went through offline validation
#  When the offline processing completes
#  And the application status changes to ‘Failed'
#  And update the document with valid landings
#  When the updated failed document is resubmitted
#  Then An email Notification should be received for resubmit in exporter's mailbox  from mailbox ( noreply.managefishexports@notifications.service.gov.uk ) that  CC has completed
#
#  Scenario:4 verify email notification is not received when landings are less than 11 (not offline validation)
#  Given CC application having less than 11 landings
#  When the document submitted
#  Then No email Notification should be received to the exporter's mailbox  from mailbox ( noreply.managefishexports@notifications.service.gov.uk )
#
#  Scenario:5 verify if email notification is received for successful submission when cloned a CC document created for offline validation
#  Given CC application is cloned a already completed document and is in a ‘Pending’ status as it went through offline validation
#  When the offline processing completes
#  And the application status changes to 'completed'
#  Then An email Notification should be received in exporter's mailbox  from mailbox  ( noreply.managefishexports@notifications.service.gov.uk ) informing CC has successfully completed
#  Scenario:6 verify if email notification is received for failed submission when cloned a CC document and updated landings with incorrect data
#  Given CC application is cloned a already completed document and upted invalid landings before submisison
#  When the offline processing completes
#  And the application status changes to 'completed'
#  Then An email Notification should be received in exporter's mailbox  from mailbox  ( noreply.managefishexports@notifications.service.gov.uk ) informing CC has failed
#
# FI0-4801-Include download CC document option in email notification sent post Offline Validation
#  Given CC application went into offline validation and was in a ‘Pending’ status
#  When the offline processing completes
#  And the application status changes to ‘Completed’
#  And there is an email sent to be notifying me that my CC has successfully completed
#  And There is download file url in the email template
#  When clicking on download link in the email
#  Then Navigates to the gov.uk notify service and the phone number 0330 159 1989 will be displayed in the pages
#  And  The document in PDF format should be downloaded

