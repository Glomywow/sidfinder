$objUser = New-Object System.Security.Principal.NTAccount("GStalnoy")
$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
$strSID.Value
#Get-ADUser -Identity '' -Properties sid
