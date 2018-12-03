<# 


This is to delete folder

NOTES
  Version:        0.1
  Author:         Nashwan Mustafa (Cloud Team)
  Creation Date:  05/04/2018
  Purpose: Initial script development

#>

$xyz="C:\Users\MustafaN\Desktop\10\45"
If (Test-Path $xyz){
     # // File exists
	Remove-Item $xyz
}Else{
     # // File does not exist
}

#$xyz="C:\Users\MustafaN\Desktop\10\45\*"
#If (Test-Path $xyz){
#     # // File exists
#	Remove-Item $xyz
#}Else{
#  # // File does not exist
#}
