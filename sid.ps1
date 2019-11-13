Add-Type -assembly System.Windows.Forms


$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='Шо зыришь мм'
$main_form.Width = 500
$main_form.Height = 300
$main_form.AutoSize = $true

$button = New-Object System.Windows.Forms.Button
$button.Text = 'button'
$button.Location = New-Object System.Drawing.Point(160,10)
$main_form.Controls.Add($button)

$TextBoxint = New-Object System.Windows.Forms.TextBox
$TextBoxint.Location  = New-Object System.Drawing.Point(160,40)
$TextBoxint.Text = 'SID'
$main_form.Controls.Add($TextBoxint)

$TextBox = New-Object System.Windows.Forms.TextBox
$TextBox.Location  = New-Object System.Drawing.Point(160,70)
$TextBox.Text = ''
$textbox.Height(300)
$TextBox.Width(500)
$main_form.Controls.Add($TextBox)

$button.add_click{

$objUser = New-Object System.Security.Principal.NTAccount($TextBoxint.Text)
$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
$textbox.Text = $strSID.value



}

$main_form.ShowDialog()
