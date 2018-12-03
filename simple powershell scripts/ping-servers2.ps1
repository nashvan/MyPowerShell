# Author - Nashwan Mustafa 
# Nashwan.mustafa@health.qld.gov.au  
#### Provide the computer name in $computername variable 
 
$serverName = Get-content "C:\Users\MustafaN\Desktop\10\server_list.txt"
 
##### Script Starts Here ######  
 
foreach ($server in $serverName) { 
 
        if (test-Connection -ComputerName $server -Count 2 -Quiet ) {  
         
            write-Host "$server is alive and Pinging " -ForegroundColor Green 
         
                    } else 
                     
                    { Write-Warning "$server seems dead not pinging"
             
                    }     
         
} 
 
 
########## end of script #######################

