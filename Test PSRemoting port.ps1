$Computer ="AMA-BARNESR"

$Computer = "AMAREA-KPOLITOW"

$Computer = "LS-BUSHA-1219"
$Computer = "LS-NAYLORJ"
$Computer = "IT-ServerRoom"
$Computer = "NELSONN"
$Computer = "Unifi"
$Computer = "Access-Control"
$Computer = "WUSA0751"  # MAC  00:05:1b:90:0a:40   172.20.6.69
$Computer = "DESKTOP-2SVF3B5"  # MAc 5c:3a:45:23:d6:ff    
$Computer = "GTIS_Win_10"
$Computer = "Sardis2020-Dev"
$Computer = "DC1"
$Computer = "MININT-B4VNQC5"
$Computer = "DC2"
$Computer = "192.168.84.19"  # Xander's PC
$Computer = "remote.sil.org"


Test-NetConnection -ComputerName $Computer -Port 135   # PowerShell Remoting
Test-NetConnection -ComputerName $Computer -Port 3389  # Remote Desktop
Test-NetConnection -ComputerName $Computer -Port 4433  # NetExtender
Test-NetConnection -ComputerName $Computer -Port 8443  # Unifi Controller
Test-NetConnection -ComputerName $Computer -Port 80    # HTTP
Test-NetConnection -ComputerName $Computer -Port 443   # HTTPS
Test-NetConnection -ComputerName 172.20.0.200 -Port 8080  
Test-NetConnection -ComputerName 216.50.37.254 -Port 4433  # NetExtender
Test-NetConnection -ComputerName $Computer 
Test-NetConnection -ComputerName 172.20.1.185
Resolve-DnsName $Computer
Resolve-DnsName 216.50.37.101

Test-Connection $Computer

NSlookup $Computer

Get-NetIPConfiguration

Get-NetIPAddress

netsh wlan show profiles 