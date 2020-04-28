#заипсываем в переменную имя пользователя
$name_user = 'saw'
#Копируем файл, чтобы его потом переименовать
Copy-Item -Path "C:\Service\sbis\1.reg" -Destination "C:\Service\sbis\$name_user.reg"
#Начинай новый файл переделывать уже
$key = Get-Content "C:\Service\sbis\$name_user.reg"
#используем переменную, которую создавали вверху $name_user
$objUser = New-Object System.Security.Principal.NTAccount("int.bit.ru", $name_user)
$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
$SID = $strSID.Value
($key).Replace('S-1-5-21-2562163532-2550886452-409202375-106260', $SID) | Set-Content "C:\Service\sbis\$name_user.reg"
