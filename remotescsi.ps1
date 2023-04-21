Function EnableMediaBurningDevices {
    Write-Output "Enabling media burning devices..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices" -Force -ErrorAction SilentlyContinue | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices" -Name "AllowRemoteDASD" -Type DWord -Value 1
}