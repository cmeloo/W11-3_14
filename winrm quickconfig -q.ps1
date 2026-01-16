winrm quickconfig -q

Set-Service -Name WinRM -StartupType Automatic
Start-Service WinRM

Set-Item WSMan:\localhost\Client\TrustedHosts -Value * -Force
Set-Item WSMan:\localhost\Service\AllowUnencrypted -Value true -Force
Set-Item WSMan:\localhost\Service\Auth\Basic -Value $true -Force
Set-Item WSMan:\localhost\Service\Auth\Negotiate -Value $true -Force