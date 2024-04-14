# POWERSHELL ADMIN:
# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# ---
# POWERSHELL ADMIN (New Window):
# Gets rid of a lot of Windows crufty unnecessary packages.
# Run get-appxpackage | format-table -autosize -property PackageFamilyName and compare unwanted packages to this.
$apps = @(
    "*BingNews*",
    "*BingWeather*",
    "*GetHelp*",
    "*Getstarted*",
    "*Messaging*",
    "*Microsoft3DViewer*",
    "*MicrosoftOfficeHub*",
    "*MicrosoftSolitaireCollection*",
    "*MicrosoftStickyNotes*",
    "*MicrosoftTeams*",
    "*MixedReality.Portal*",
    "*Office.OneNote*",
    "*OneConnect*",
    "*OneDriveSync*",
    "*Print3D*",
    "*SkypeApp*",
    "*Wallet*",
    "*WindowsAlarms*",
    "*windowscommunicationsapps*",
    "*WindowsFeedbackHub*",
    "*WindowsMaps*",
    "*WindowsSoundRecorder*",
    "*XboxApp*",
    "*XboxGameOverlay*",
    "*XboxGamingOverlay*",
    "*XboxIdentityProvider*",
    "*XboxSpeechToTextOverlay*",
    "*YourPhone*",
    "*ZuneMusic*",
    "*ZuneVideo*"
)

foreach ($app in $apps) {
    & Get-AppxPackage "${app}" | Remove-AppxPackage
}


# ---
# POWERSHELL ADMIN (New Window):
choco install -y `
    7zip `
    adobereader `
    audacity `
    authy-desktop `
    awscli `
    calibre `
    darktable `
    dbeaver `
    deluge `
    discord `
    docker-desktop `
    firacode `
    firefox `
    git `
    googlechrome `
    googledrive `
    just `
    k3d `
    lghub `
    lightshot `
    notion `
    obs-studio `
    plex `
    powertoys `
    screentogif `
    slack `
    spybot `
    steam `
    terraform `
    tidal `
    vlc `
    vscode `
    whatsapp `
    windirstat

# INSTALL THESE SEPARATELY: huion-tablet, screen-to-gif, iCUE (RGB RAM).
