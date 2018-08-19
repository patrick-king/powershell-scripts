#run get-netconnectionprofile to see what the adapters are
Get-NetConnectionProfile

#choose the one you want to change and
#change the connection to the profile desired
#uncomment line below and update the Interface Index to set the profile
#Set-NetConnectionProfile -InterfaceIndex 20 -NetworkCategory Private