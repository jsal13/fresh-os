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
# POWERSHELL ADMIN:
# Installs common apps with winget.
# NOTE: SPOTIFY may need non-admin.
$apps = @(
    "7zip",
    "Adobe.Acrobat.Reader.64-bit",
    "Audacity.Audacity",
    "Amazon.AWSCLI",
    "calibre.calibre",
    "DelugeTeam.Deluge",
    "Discord.Discord",
    "Docker.DockerDesktop",
    "Mozilla.Firefox",
    "Git.Git",
    "Google.Chrome",
    "Google.GoogleDrive",
    "Casey.Just",
    "k3d.k3d",
    "Logitech.GHUB",
    "Skillbrains.Lightshot",
    "Notion.Notion",
    "Notion.NotionCalendar",
    "OBSProject.OBSStudio",
    "Plex.Plex",
    "Microsoft.PowerToys",
    "NickeManarin.ScreenToGif",
    "SlackTechnologies.Slack",
    "Valve.Steam",
    "Hashicorp.Terraform",
    "VideoLAN.VLC",
    "Microsoft.VisualStudioCode",
    "WhatsApp.WhatsApp",
    "WinDirStat.WinDirStat"

)

foreach ($app in $apps) {
    & winget install -e --id ${app}
}

# Fira Code install separately:
# https://github.com/tonsky/FiraCode/wiki/Installing#windows

# Whatsapp install separately:
# https://www.whatsapp.com/download
