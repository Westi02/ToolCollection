
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

$form = New-Object System.Windows.Forms.Form
$form.FormBorderStyle = "FixedDialog"
$form.Text = "Example"
$form.BackColor = "#DFDFAA"
$form.Size = New-Object System.Drawing.Size(333, 326)

$form.Icon = "C:/Develop/Powershell_Workspace/prepare.ico"
$form.StartPosition = "CenterScreen"

$label0 = New-Object System.Windows.Forms.Label
$label0.Text = "Color:"
$label0.Font = New-Object System.Drawing.Font("Lucida Console", 17, [System.Drawing.FontStyle]::Regular)
$label0.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$label0.Location = New-Object System.Drawing.Size(0, 18.5)
$label0.Size = New-Object System.Drawing.Size(92, 36)
$label0.ForeColor = "#000000"
$form.Controls.Add($label0)


$button1 = New-Object System.Windows.Forms.Button
$button1.Text = ""
$button1.Size = New-Object System.Drawing.Size(118, 88)
$button1.Font = New-Object System.Drawing.Font("Lucide Console", 17, [System.Drawing.FontStyle]::Regular)
$button1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$button1.Location = New-Object System.Drawing.Size(104.0, 176.0)
$button1.BackColor = "#777777"
$button1.ForeColor = "#FFFFFF"
$button1.Add_Click( {
    function Is-Checked {
        param (
            [string] $key
        )
        return $form.Controls.Find($key, 1).Checked
    }
    if (Is-Checked "blue") {
    start-process "cmd" -ArgumentList "/k color 90 & @echo off & title blue example & echo This is an example, on how to create a form using the Gui Builder."
} elseif (Is-Checked "green") {
    start-process "cmd" -ArgumentList "/k color a0 & @ echo off & title green example & echo This is an example, on how to create a form using the Gui Builder."
} else {
    start-process "cmd"
} 
}.GetNewClosure() )
$form.Controls.Add($button1)
$button1.Image = [System.Drawing.Image]::FromFile("res\icons8-konsole-100.png")


$checkbox2 = New-Object System.Windows.Forms.CheckBox
$checkbox2.Text = "blue"
$checkbox2.Size = New-Object System.Drawing.Size(135, 38)
$checkbox2.Font = New-Object System.Drawing.Font("Lucide Console", 15, [System.Drawing.FontStyle]::Regular)
$checkbox2.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$checkbox2.Location = New-Object System.Drawing.Size(95, 55)
$checkbox2.ForeColor = "#00aaFF"
$checkbox2.Name = "blue"
$form.Controls.Add($checkbox2)


$checkbox3 = New-Object System.Windows.Forms.CheckBox
$checkbox3.Text = "green"
$checkbox3.Size = New-Object System.Drawing.Size(135, 40)
$checkbox3.Font = New-Object System.Drawing.Font("Lucide Console", 15, [System.Drawing.FontStyle]::Regular)
$checkbox3.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$checkbox3.Location = New-Object System.Drawing.Size(95.5, 110)
$checkbox3.ForeColor = "#00AA00"
$checkbox3.Name = "green"
$form.Controls.Add($checkbox3)

$label4 = New-Object System.Windows.Forms.Label
$label4.Text = "____"
$label4.Font = New-Object System.Drawing.Font("Lucida Console", 30, [System.Drawing.FontStyle]::Regular)
$label4.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$label4.Location = New-Object System.Drawing.Size(-7.0, 33.0)
$label4.Size = New-Object System.Drawing.Size(100, 24)
$label4.ForeColor = "#000000"
$form.Controls.Add($label4)

[void] $form.ShowDialog()
        