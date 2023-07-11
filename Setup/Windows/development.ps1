# If this doesn't run, try setting the execution policy by: set-executionpolicy remotesigned

#Requires -RunAsAdministrator

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
choco install win-no-annoy
choco install vscode
choco install googlechrome
choco install git poshgit github-desktop
choco install sublimetext4
choco install python3
choco install paint.net
choco install inkscape

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
    'ms-vscode.cpptools-extension-pack'
) | % { & "C:\Program Files\Microsoft VS Code\bin\code.cmd" --install-extension $_ }

# Visual Studio 2022 community
choco install visualstudio2022community

# Native C/C++ Development tools for VS
# choco install visualstudio2022-workload-nativedesktop

Write-Host -Foreground yellow "Reboot when done"
