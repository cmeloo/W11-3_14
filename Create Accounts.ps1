# Create Admin Account
New-LocalUser "AdminUser" -Password (ConvertTo-SecureString "YourSecureAdminPassword" -AsPlainText -Force) -FullName "Administrative User" -Description "Management Account"

# Add to Administrators group
Add-LocalGroupMember -Group "Administrators" -Member "AdminUser"

# Create Standard User Account
New-LocalUser "InstallerUser" -Password (ConvertTo-SecureString "InstallerUserPassword" -AsPlainText -Force) -FullName "Application Installer" -Description "Standard Account for Installing Apps"

# Add to Power Users group for application installation capability
Add-LocalGroupMember -Group "Power Users" -Member "InstallerUser"

