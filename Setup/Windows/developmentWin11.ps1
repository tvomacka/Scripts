# If this doesn't run, try setting the execution policy by: set-executionpolicy remotesigned

#Requires -RunAsAdministrator

# Check if Chocolatey is already installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    # Install Chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
} else {
    Write-Output "Chocolatey is already installed."
}

choco feature enable --name=allowGlobalConfirmation

#Quality of life improvements
Remove-Item -ErrorAction SilentlyContinue -Recurse HKCU:\AppEvents\Schemes
Set-Service Audiosrv -StartupType Automatic

#General tools
choco install googlechrome
choco install paint.net
choco install inkscape
choco install sublimetext4

#Development
choco install git poshgit github-desktop
choco install python3
choco install mingw
choco install vscode
choco install visualstudio2022community

#Extensions and tool setup
choco install visualstudio2022-workload-nativedesktop
