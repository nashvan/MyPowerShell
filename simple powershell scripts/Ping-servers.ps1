<# 
Script to ping and report on computers. 
Data reported: ComputerName, IPAddress, MACAddress, DateBuilt, OSVersion, Model, and LastBootTime 
Requires list of computers in text file 
Sam Boutros - 10/31/2014 - v1.0 
#> 
#$ComputerList = ".\serverlist.txt" 
$ComputerList = ".\C:\Users\MustafaN\Desktop\10\serverlist.txt" 

$CSVFile = ".\Ping-Report-$(Get-Date -format yyyyMMdd_hhmmsstt).csv" 
$LogFile = ".\Ping-Report-$(Get-Date -format yyyyMMdd_hhmmsstt).txt" 
# End Data Entry