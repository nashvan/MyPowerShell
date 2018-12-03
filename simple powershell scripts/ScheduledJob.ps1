$xyz="C:\Users\MustafaN\Desktop\10\45\*"
If (Test-Path $xyz){
     # // File exists
	Remove-Item $xyz
}Else{
  # // File does not exist
}