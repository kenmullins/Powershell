# Script:	Get-Remote-LocalAdmins.ps1
# Purpose:  This script can detect the members of a remote machine's local Admins group
# Author:   Paperclips
# Email:	pwd9000@hotmail.co.uk
# Date:     Nov 2011
# Comments: 
# Notes:    Modify by Ken
#			

function get-localadmin { 
param ($strcomputer) 
 
$admins = Gwmi win32_groupuser –computer $strcomputer  
$admins = $admins |? {$_.groupcomponent –like '*"Administrators"'} 
 
$admins |% { 
$_.partcomponent –match “.+Domain\=(.+)\,Name\=(.+)$” > $nul 
$matches[1].trim('"') + “\” + $matches[2].trim('"') 
} 
}

#Usage: get-localadmin "Server FQDN"