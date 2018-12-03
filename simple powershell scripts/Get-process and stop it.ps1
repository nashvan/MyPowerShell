
$p = Get-Process -Name "WmiApSrv"
Stop-Process -InputObject $p
Get-Process | Where-Object {$_.HasExited}
