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
Write-Host " Select an option and press Enter: "  -nonewline
}
cls
$servicesToStop = @(
    "AgentActivationRuntime_5660e",
    "AllJoynRouterService",
    "ApplicationLayerGatewayService",
    "ApplicationIdentity",
    "ApplicationInformation",
    "ApplicationManagement",
    "AppReadiness",
    "MicrosoftAppVClient",
    "ASPNETStateService",
    "AssignedAccessManagerService",
    "CellularTime",
    "ActiveXInstallerAxInstSV",
    "GameDVRandBroadcastUserService",
    "BitLockerDriveEncryptionService",
    "BattlEyeService",
    "BackgroundIntelligentTransferService",
    "BluetoothUserSupportService_5660e",
    "BluetoothAudioGatewayService",
    "BluetoothSupportService",
    "CapabilityAccessManagerService",
    "CaptureService_5660e",
    "CertificatePropagation",
    "MicrosoftCloudIdentityService",
    "COMSystemApplication",
    "ConsentUX_5660e",
    "CredentialEnrollmentManagerUserSvc_5660e",
    "OfflineFiles",
    "dcsvc",
    "OptimizeDrives",
    "DeviceAssociationBroker_5660e",
    "DeviceInstallService",
    "DevicePicker_5660e",
    "DevicesFlow_5660e",
    "DevQueryBackgroundDiscoveryBroker",
    "MicrosoftDiagnosticsHubStandardCollectorService",
    "DiagnosticExecutionService",
    "ConnectedUserExperiencesandTelemetry",
    "DialogBlockingService",
    "DisplayEnhancementService",
    "DeviceManagementEnrollmentService",
    "DeviceManagementWirelessApplicationProtocolService",
    "WiredAutoConfig",
    "DeviceSetupManager",
    "DataSharingService",
    "EABackgroundService",
    "ExtensibleAuthenticationProtocol",
    "EasyAntiCheat",
    "EasyAntiCheatEpicOnlineServices",
    "MicrosoftEdgeUpdateService_edgeupdate",
    "MicrosoftEdgeUpdateService_edgeupdatem",
    "EncryptingFileSystemEFS",
    "EmbeddedMode",
    "EnterpriseAppManagementService",
    "Fax",
    "FunctionDiscoveryProviderHost",
    "FunctionDiscoveryResourcePublication",
    "FileHistoryService",
    "WindowsCameraFrameServer",
    "FuturemarkSystemInfoService",
    "GameInputService",
    "GroupPolicyClient",
    "GraphicsPerfSvc",
    "HVHostService",
    "WindowsMobileHotspotService",
    "IKEandAuthIPIPsecKeyingModules",
    "IntelCapabilityLicensingServiceInterface",
    "IntelPROSetMonitoringService",
    "IntelTPMProvisioningService",
    "IPHelper",
    "IPTranslationConfigurationService",
    "IntelDynamicApplicationLoaderHostInterface",
    "KtmRmforDistributedTransactionCoordinator",
    "Server",
    "Workstation",
    "GeolocationService",
    "WindowsLicenseManagerService",
    "LinkLayerTopologyDiscoveryMapper",
    "LanguageExperienceService",
    "DownloadedMapsManager",
    "McpManagementService",
    "MessagingService_5660e",
    "WindowsMixedRealityOpenXRService",
    "MozillaMaintenanceService",
    "DistributedTransactionCoordinator",
    "MicrosoftiSCSIInitiatorService",
    "WindowsInstaller",
    "MicrosoftKeyboardFilter",
    "NaturalAuthentication",
    "NetworkConnectivityAssistant",
    "NetworkConnectedDevicesAutoSetup",
    "Netlogon",
    "NetworkConnections",
    "NetworkSetupService",
    "NetTcpPortSharingService",
    "PeerNetworkingIdentityManager",
    "PeerNetworkingGrouping",
    "BranchCache",
    "WindowsPerceptionSimulationService",
    "PerformanceCounterDLLHost",
    "PhoneService",
    "ContactData_5660e",
    "PerformanceLogsandAlerts",
    "PnkBstrA",
    "PNRPMachineNamePublicationService",
    "PeerNameResolutionProtocol",
    "IPsecPolicyAgent",
    "PrinterExtensionsandNotifications",
    "PrintWorkflow_5660e",
    "WindowsPushToInstallService",
    "QualityWindowsAudioVideoExperience",
    "RemoteAccessAutoConnectionManager",
    "RemoteAccessConnectionManager",
    "RazerGameManager",
    "RazerSynapseService",
    "RoutingandRemoteAccess",
    "RemoteRegistry",
    "RetailDemoService",
    "RadioManagementService",
    "RemoteProcedureCallRPCLocator",
    "IntelStorageMiddlewareService",
    "RazerCentralService",
    "SmartCard",
    "SmartCardDeviceEnumerationService",
    "SmartCardRemovalPolicy",
    "WindowsBackup",
    "SecondaryLogon",
    "PaymentsandNFCSEManager",
    "WindowsDefenderAdvancedThreatProtectionService",
    "SensorDataService",
    "SensorService",
    "SensorMonitoringService",
    "RemoteDesktopConfiguration",
    "InternetConnectionSharingICS",
    "SpatialDataService",
    "SharedPCAccountManager",
    "MicrosoftStorageSpacesSMP",
    "MicrosoftWindowsSMSRouterService",
    "SNMPTrap",
    "WindowsPerceptionService",
    "PrintSpooler",
    "SoftwareProtection",
    "SSDPDiscovery",
    "OpenSSHAuthenticationAgent",
    "SecureSocketTunnelingProtocolService",
    "SteamClientService",
    "WindowsImageAcquisitionWIA",
    "SpotVerifier",
    "MicrosoftSoftwareShadowCopyProvider",
    "SysMain",
    "Telephony",
    "RemoteDesktopServices",
    "Themes",
    "StorageTiersManagement",
    "DistributedLinkTrackingClient",
    "RecommendedTroubleshootingService",
    "WindowsModulesInstaller",
    "AutoTimeZoneUpdater",
    "UdkUserService_5660e",
    "UserExperienceVirtualizationService",
    "RemoteDesktopServicesUserModePortRedirector",
    "UserDataStorage_5660e",
    "UPnPDeviceHost",
    "UserDataAccess_5660e",
    "VolumetricAudioCompositorService",
    "VirtualDisk",
    "HyperVGuestServiceInterface",
    "HyperVHeartbeatService",
    "HyperVDataExchangeService",
    "HyperVRemoteDesktopVirtualizationService",
    "HyperVGuestShutdownService",
    "HyperVTimeSynchronizationService",
    "HyperVPowerShellDirectService",
    "HyperVVolumeShadowCopyRequestor",
    "VisualStudioInstallerElevationService",
    "VolumeShadowCopy",
    "VisualStudioStandardCollectorService",
    "WindowsTime",
    "WindowsUpdateMedicService",
    "WalletService",
    "WarpJITSvc",
    "BlockLevelBackupEngineService",
    "WindowsBiometricService",
    "WindowsConnectNowConfigRegistrar",
    "DiagnosticSystemHost",
    "WebClient",
    "WindowsEventCollector",
    "WindowsEncryptionProviderHostService",
    "ProblemReportsControlPanelSupport",
    "WindowsErrorReportingService",
    "WiFiDirectServicesConnectionManager",
    "StillImageAcquisitionEvents",
    "WindowsRemoteManagementWSManagement",
    "WindowsInsiderService",
    "WLANAutoConfig",
    "MicrosoftAccountSignInAssistant",
    "LocalProfileAssistantService",
    "WindowsManagementService",
    "WMIPerformanceAdapter",
    "IntelManagementEngineWMIProvider",
    "WorkFolders",
    "ParentalControls",
    "PortableDeviceEnumeratorService",
    "WindowsPushNotificationsSystemService",
    "WindowsSearch",
    "WWANAutoConfig",
    "XboxLiveAuthManager",
    "XboxLiveGameSave",
    "XboxAccessoryManagementService",
    "XboxLiveNetworkingService"
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
                    Stop-Service -Name $service -Force
                    Set-Service -Name $service -StartupType Disabled
                }
                Write-Host "Services stopped and disabled successfully."
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