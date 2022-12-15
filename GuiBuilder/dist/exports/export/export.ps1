
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

$form = New-Object System.Windows.Forms.Form
$form.FormBorderStyle = "FixedDialog"
# $form.StartPosition = "CenterScreen"
$form.Text = "Example"
$form.BackColor = "#DFDFDF"
$form.Size = New-Object System.Drawing.Size(333, 292)

$form.Icon = "C:/Develop/Powershell_Workspace/prepare.ico"
$form.StartPosition = "CenterScreen"
$label0 = New-Object System.Windows.Forms.Label
$label0.Text = "Color:"
$label0.Font = New-Object System.Drawing.Font("Lucida Console", 12, [System.Drawing.FontStyle]::Regular)
$label0.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$label0.Location = New-Object System.Drawing.Size(13.5, 35.0)
$label0.Size = New-Object System.Drawing.Size(77, 20)
$label0.ForeColor = "#000000"
$form.Controls.Add($label0)

$button1 = New-Object System.Windows.Forms.Button
$button1.Text = "Start CMD"
$button1.Size = New-Object System.Drawing.Size(156, 48)
$button1.Font = New-Object System.Drawing.Font("Lucide Console", 17, [System.Drawing.FontStyle]::Regular)
$button1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$button1.Location = New-Object System.Drawing.Size(86.0, 170.0)
$button1.BackColor = "#FFFFFF"
$button1.ForeColor = "#000000"
$button1.Add_Click( {
function Is-Checked {
    param (
        [string] $key
    )
    return $form.Controls.Find($key, 1).Checked
}
if (Is-Checked "blue") {
    start-process "cmd" -ArgumentList "/k color 90"
} elseif (Is-Checked "green") {
    start-process "cmd" -ArgumentList "/k color a0"
} else {
    start-process "cmd"
} 
}.GetNewClosure() )
$form.Controls.Add($button1)

$checkbox2 = New-Object System.Windows.Forms.CheckBox
$checkbox2.Text = "blue"
$checkbox2.Size = New-Object System.Drawing.Size(135, 31)
$checkbox2.Font = New-Object System.Drawing.Font("Lucide Console", 11, [System.Drawing.FontStyle]::Regular)
$checkbox2.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$checkbox2.Location = New-Object System.Drawing.Size(95, 64.5)
$checkbox2.ForeColor = "#00aaFF"
$checkbox2.Name = "blue"
$form.Controls.Add($checkbox2)

$checkbox3 = New-Object System.Windows.Forms.CheckBox
$checkbox3.Text = "green"
$checkbox3.Size = New-Object System.Drawing.Size(135, 30)
$checkbox3.Font = New-Object System.Drawing.Font("Lucide Console", 11, [System.Drawing.FontStyle]::Regular)
$checkbox3.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$checkbox3.Location = New-Object System.Drawing.Size(95, 108)
$checkbox3.ForeColor = "#00AA00"
$checkbox3.Name = "green"
$form.Controls.Add($checkbox3)

[void] $form.ShowDialog()
        