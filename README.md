# azure-backup-automation
Automated backup and recovery solution for Azure VMs using Azure Recovery Services Vault and Azure Automation. It schedules daily backups, monitors backup job statuses, and sends email notifications for success or failure. Includes PowerShell script for custom alerts and easy setup instructions.

## Prerequisites

- **Azure Subscription**: You must have an active Azure account.
- **Azure Virtual Machine**: A VM deployed on Azure that you want to back up.
- **SMTP Server**: Access to an SMTP server for sending email notifications.

## Steps

1. **Deploy Azure VM**:
    - Deploy an Azure VM that you wish to back up (refer to [Azure VM Setup](https://learn.microsoft.com/en-us/azure/virtual-machines/)).

2. **Create Recovery Services Vault**:
    - Navigate to **Recovery Services Vault** in the Azure portal.
    - Create a Recovery Services Vault in your preferred region.
    - Configure the vault to back up the selected Azure VM daily.

3. **Set Up Backup Alert Automation**:
    - Create an **Automation Account** in the Azure portal.
    - Import the provided **backup_alert_runbook.ps1** as a Runbook in the Automation Account.
    - Publish the Runbook and configure a schedule to run based on your backup frequency.
    - Set up a **Monitor Alert** to trigger the Runbook when a backup fails.

4. **Test**:
    - Perform a manual backup or simulate a failure and check that email alerts are being sent as expected.

## Files in This Repository

- `backup_alert_runbook.ps1`: PowerShell script used in the Azure Automation Runbook to send email notifications.
- `.gitignore`: Gitignore file to avoid pushing unnecessary files.
- `README.md`: This file with setup instructions.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
