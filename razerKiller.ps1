$MainMenu = {
Write-Host " *******************************************"
Write-Host " *           Richy's Razer Killer          *"
Write-Host " *******************************************"
Write-Host
Write-Host " 1.) Kill Razer Services"
Write-Host " 2.) Enable Razer Services"
Write-Host " 3.) Quit"
Write-Host
Write-Host " Select an option and press Enter: "  -nonewline
}
cls



Do {
cls
Invoke-Command $MainMenu
$Select = Read-Host
Switch ($Select)
    {
    1 {
        Set-Service -Name 'RzActionSvc' -StartupType Disabled
		Stop-Service -Name 'RzActionSvc'
		Stop-Service -Name 'Razer Game Manager Service'
		Set-Service -Name 'Razer Game Manager Service' -StartupType Disabled
		Stop-Service -Name 'Razer Synapse Service'
		Set-Service -Name 'Razer Synapse Service' -StartupType Disabled
       }
    2 {
        Set-Service -Name 'RzActionSvc' -StartupType Automatic
		Set-Service -Name 'Razer Game Manager Service' -StartupType Automatic
		Set-Service -Name 'Razer Synapse Service' -StartupType Automatic
       }
    3 {
        Write-Host " Go fuck yourself"
       }

    }
}
While ($Select -ne 3)

