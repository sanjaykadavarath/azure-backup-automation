param(
    [string]$status,
    [string]$backupJobName
)

# Define the email parameters
$smtpServer = "smtp.yourmailserver.com"
$smtpFrom = "your-email@example.com"
$smtpTo = "recipient@example.com"
$smtpSubject = "Azure Backup Job Status: $status"
$smtpBody = "The backup job '$backupJobName' has completed with status: $status"

# Send the email
$mailmessage = New-Object system.net.mail.mailmessage
$mailmessage.from = ($smtpFrom)
$mailmessage.To.add($smtpTo)
$mailmessage.Subject = $smtpSubject
$mailmessage.Body = $smtpBody

$smtp = New-Object Net.Mail.SmtpClient($smtpServer)
$smtp.Send($mailmessage)
