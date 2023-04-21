# remote-access-optical-drive-rdp-windows
How to enable remote access (rdp) in such way that it can access cd/dvd drives externally (ripping cd)


The solution is to set this group policy:

(run remotescsi.ps1)

Then change the following:

- All Removable Storage: Allow direct access in remote sessions = Enabled
(gpedit.msc, Computer Configuration, Administrative Templates, System, Removable Storage Access)

The associated registry key:
- HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\RemovableStorageDevices, AllowRemoteDASD = 1
