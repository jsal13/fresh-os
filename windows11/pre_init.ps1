# ! Run as Admin, and run the following command first:
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted

# ! Get the new powershell: 
# https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.4#msi


# Get the repo and initialize the fresh-os stuff.
# YOU MAY NEED TO CLOSE AND RE-OPEN POWERSHELL.
Invoke-WebRequest -Uri https://github.com/jsal13/fresh-os/archive/refs/heads/main.zip -OutFile ~/Downloads/main.zip
Expand-Archive ~\Downloads\main.zip -DestinationPath ~\Downloads\main
cd ~/Downloads/main/fresh-os-main/windows11
./init.ps1

# Update Powershell
winget install Microsoft.PowerShell

# Install WSL
wsl --install

# Update Windows
Install-Module -AcceptLicense -Force PSWindowsUpdate
Get-WindowsUpdate -AcceptAll -Install -AutoReboot