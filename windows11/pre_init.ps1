# ! Run as Admin, and run the following command first.
Set-ExecutionPolicy -ExecutionPolicy Unrestricted

# Upgrade Winget.
# See also: https://github.com/microsoft/winget-cli/issues/3832
Invoke-WebRequest -Uri https://aka.ms/getwinget -OutFile winget.msixbundle
Add-AppPackage -ForceApplicationShutdown .\winget.msixbundle
del .\winget.msixbundle

# Get the repo and initialize the fresh-os stuff.
# YOU MAY NEED TO CLOSE AND RE-OPEN POWERSHELL.
Invoke-WebRequest -Uri https://github.com/jsal13/fresh-os/archive/refs/heads/main.zip -OutFile ~/Downloads/main.zip
Expand-Archive ~\Downloads\main.zip -DestinationPath ~\Downloads\main

# Update Powershell
winget install Microsoft.PowerShell

# Install WSL
wsl --install

# Update Windows (Note: these don't seem to work as well, but Win Update is fine manually.)
# Install-Module -AcceptLicense -Force PSWindowsUpdate
# Get-WindowsUpdate -AcceptAll -Install -AutoReboot

# !! Now run the init.ps1 file commands.
