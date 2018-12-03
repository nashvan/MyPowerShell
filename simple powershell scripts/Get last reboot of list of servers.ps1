# Powershell script to check Last Reboot Time on a list of machines included in a text file and export the report as a CSV file 
# Author - Nashwan Mustafa 
# Nashwan.mustafa@health.qld.gov.au  
 
 
$machines = Get-Content D:\Trainings\PowerShell\Server_List.txt 
$report = @() 
$object = @() 
foreach($machine in $machines) 
{ 
$machine 
$object = gwmi win64_operatingsystem -ComputerName $machine | select csname, @{LABEL='LastBootUpTime';EXPRESSION={$_.ConverttoDateTime($_.lastbootuptime)}} 
$report += $object 
} 
$report | Export-csv C:\Users\mustafan\Desktop\10\Reboot.csv