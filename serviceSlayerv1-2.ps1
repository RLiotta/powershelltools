# Richys Service Slayer

$MainMenu = {
    Write-Host " *******************************************"
    Write-Host " *           Richy's Service Slayer        *"
    Write-Host " *******************************************"
    Write-Host
    Write-Host " 1.) Slay them services"
    Write-Host " 2.) Bring back services"
    Write-Host " 3.) Quit"
    Write-Host
    Write-Host " Select an option and press Enter: " -nonewline
}

cls
$servicesToStop = @(
    # Your list of services
"AgentActivationRuntime_5660e"
"AllJoynRouter"
"ALG"
"AppIDSvc"
"Appinfo"
"AppMgmt"
"AppReadiness"
"AppVClient"
"ASP.NET State Service"
"AAM"
"Cellular Time"
"AxInstSV"
"GameDVR and Broadcast User Service"
"BDESVC"
"BEService"
"BITS"
"BluetoothUserService"
"BAGSVC"
"BthAudioGW"
"BthHFSrv"
"CamSvc"
"CAPSVC"
"CloudIdsvc"
"COMSysApp"
"ConsentUX"
"CEM"
"CscService"
"dcsvc"
"DcpSvc"
"Device Association Broker"
"DeviceInstall"
"DevicePicker"
"DevicesFlow"
"DevQueryBroker"
"DiagTrack"
"diagtrack"
"DusmSvc"
"dbupdate"
"dbupdatem"
"EFS"
"embeddedmode"
"Enterprise App Management Service"
"Fax"
"fdPHost"
"fdrespub"
"fhsvc"
"FrameServer"
"Futuremark SystemInfo Service"
"GameInput"
"GPSvc"
"hvhost"
"Ics"
"IpOverUsbSvc"
"Iphlpsvc"
"IPBusEnum"
"IPSSVC"
"IPSECSVC"
"IEEtwCollectorService"
"IKEEXT"
"Intel Indeo"
"IntelDPTM"
"IntelCpHeciSvc"
"IPHelper"
"IPTS"
"IntelLoader"
"KtmRm"
"LanmanServer"
"LanmanWorkstation"
"lfsvc"
"LicenseManager"
"lltdsvc"
"LanguageExperience"
"lfsvc"
"MdmDiagnostics"
"Mcp"
"MessagingService"
"MixedRealityOpenXRSvc"
"MozillaMaintenance"
"MSDTC"
"MSiSCSI"
"msiserver"
"MicrosoftKeyboardFilter"
"NgcCtnrSvc"
"NcaSvc"
"ncc"
"netlogon"
"netprofm"
"netprofm.dll"
"NetTcpPortSharing"
"P2PSvc"
"PcaSvc"
"PeerDistSvc"
"PeerDistSvc"
"BCeSVC"
"PerceptionSimulation"
"perfhost"
"PhoneSvc"
"PhoneSvc"
"PnkBstrA"
"PNRPsvc"
"PNRPAutoReg"
"PolicyAgent"
"PrintNotify"
"PrintWorkflow"
"PushToInstall"
"QWAVE"
"RasAuto"
"RasMan"
"Razer Game Manager"
"Razer Synapse Service"
"RemoteAccess"
"RemoteRegistry"
"RetailDemo"
"RadioManagement"
"RpcLocator"
"StorageMiddlewareService"
"Razer Central Service"
"SCardSvr"
"ScDeviceEnum"
"ScPolicySvc"
"SDRSVC"
"seclogon"
"SEMgrSvc"
"SecurityHealthService"
"SENS"
"SensorDataService"
"SensrSvc"
"SensrMonSvc"
"SessionEnv"
"SharedAccess"
"SpatialDataService"
"SharedPC"
"SmsRouter"
"SNMPTRAP"
"SensrSvc"
"Spooler"
"sppsvc"
"SSDPSRV"
"SSHAgent"
"SstpSvc"
"Steam Client Service"
"stisvc"
"svsvc"
"svsvc"
"SystemEventsBroker"
"SystemEventsBroker"
"tapisrv"
"TermService"
"Themes"
"TieringEngineService"
"TrkWks"
"TapiSrv"
"tzautoupdate"
"UdkUserService"
"UevAgentService"
"UmRdpService"
"UnistoreSvc"
"UserDataSvc"
"upnphost"
"UserDataSvc"
"UsoSvc"
"VDCAgent"
"vmicguestinterface"
"vmicheartbeat"
"vmickvpexchange"
"vmicrdv"
"vmicshutdown"
"vmictimesync"
"vmicvmsession"
"vmicvss"
"VSStandardCollectorService"
"vss"
"W32Time"
"waa"
"WarpJITSvc"
"WaSvc"
"wbengine"
"WbioSrvc"
"Wcmsvc"
"WdiServiceHost"
"WdiSystemHost"
"Wecsvc"
"WEPHOSTSVC"
"WiaRpc"
"winmgmt"
"WMSVC"
"WorkFolders"
"WPCSvc"
"Portable Device Enumerator Service"
"PushToInstall"
"Search"
"WWAN AutoConfig"
"XblAuthManager"
"XblGameSave"
"XboxGipSvc"
"XboxNetApiSvc"
)

Do {
    cls
    Invoke-Command $MainMenu
    $Select = Read-Host

    Switch ($Select) {
        1 {
            $confirmation = Read-Host "Are you sure you want to continue? (Y/N)"
            if ($confirmation -eq 'Y' -or $confirmation -eq 'y') {
                Write-Host "Doing it..."
                foreach ($service in $servicesToStop) {
                    Stop-Service -Name $service -Force -ErrorAction SilentlyContinue
                    Set-Service -Name $service -StartupType Manual
                    # Check if the service is still running after attempting to stop
                    $serviceStatus = (Get-Service -Name $service -ErrorAction SilentlyContinue).Status
                    if ($serviceStatus -eq 'Stopped') {
                        Write-Output "Service $service successfully stopped."
                    } else {
                        Write-Output "Failed to stop service $service"
                    }
                }
                Write-Host "Check for errors if none restart."
            }
        }

        2 {
            $confirmation = Read-Host "Are you sure you want to continue? (Y/N)"
            if ($confirmation -eq 'Y' -or $confirmation -eq 'y') {
                Write-Host "Continuing with the action..."
                foreach ($service in $servicesToStop) {
                    Set-Service -Name $service -StartupType Automatic
                }
                Write-Host "Services set back to automatic."
                Write-Host "You May Now Restart"
                $restartChoice = Read-Host "Do you want to restart the PC? (Y/N)"
                if ($restartChoice -eq 'Y' -or $restartChoice -eq 'y') {
                    Write-Host "Restarting the PC..."
                    Restart-Computer -Force
                } else {
                    Write-Host "PC will not be restarted."
                }
                Write-Host "Good Luck :D"
            } else {                
                Write-Host "Wtf dude waste my time..."
            }
        }

        3 {
            Write-Host "Go fuck yourself"
        }
    }
} While ($Select -ne 3)