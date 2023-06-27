# This script
# iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
choco install win-no-annoy
choco install vscode
choco install googlechrome
choco install git poshgit github-desktop
choco install sublimetext4

# delete annoying Windows notification sounds
Remove-Item -ErrorAction SilentlyContinue -Recurse HKCU:\AppEvents\Schemes
Set-Service Audiosrv -StartupType Automatic

@(
    'coenraads.bracket-pair-colorizer-2'
    'wmaurer.change-case'
    'streetsidesoftware.code-spell-checker'
    'ryu1kn.partial-diff'
    'ms-vscode.powershell'
    'mohsen1.prettify-json'
    'vscode-icons-team.vscode-icons'
) | % { & "C:\Program Files\Microsoft VS Code\bin\code.cmd" --install-extension $_ }


& "${env:ProgramFiles}\Google\Chrome\Application\chrome.exe" https://app.mindmup.com/map/new

# Visual Studio 2022 community
choco install visualstudio2022community

Write-Host -Foreground yellow "Reboot when done"
