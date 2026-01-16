# Disable "Allow Windows to manage my default printer"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Windows" -Name LegacyDefaultPrinterMode -Value 1

# Prevent printers from being installed automatically
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings" -Name DisableAutomaticPrinterInstall -Value 1 -Type DWord
