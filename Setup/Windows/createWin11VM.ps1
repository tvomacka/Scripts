# Creates a Hyper-V VM that is capable to install Win11
# https://techcommunity.microsoft.com/t5/itops-talk-blog/how-to-run-a-windows-11-vm-on-hyper-v/ba-p/3713948

$VMName = Read-Host -Prompt "Please provide the Virtual Machine Name"
$SwitchName = Read-Host -Prompt "Please provide the name of the Virtual Switch to be used"
$ISOFile = Read-Host -Prompt "Please provide the full path for the Windows Server 2022 install media (ISO file)"
$VMPath = Read-Host -Prompt "Please provide the path to store the VM"
New-VM -Name $VMName -Generation 2 -MemoryStartupBytes 4096MB -SwitchName $SwitchName -Path $VMPath -NewVHDPath $VMPath\$VMName\virtualdisk\VHD.vhdx -NewVHDSizeBytes 127000MB
Set-VM -Name $VMName -ProcessorCount 4 -AutomaticCheckpointsEnabled $false
Add-VMDvdDrive -VMName $VMName -Path $ISOFile
$DVDDrive = Get-VMDvdDrive -VMName $VMName
Set-VMFirmware -BootOrder $DVDDrive -VMName $VMName
Set-VMKeyProtector -VMName $VMName -NewLocalKeyProtector
Enable-VMTPM -VMName $VMName
