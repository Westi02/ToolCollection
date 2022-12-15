
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

$form = New-Object System.Windows.Forms.Form
$form.FormBorderStyle = "FixedDialog"
$form.Text = "StartCMD"
$form.BackColor = "#DFDFDF"
$form.Size = New-Object System.Drawing.Size(471, 484)

$form.Icon = "C:/Develop/Python_Workspace/GuiBuilder/res/prepare.ico"
$form.StartPosition = "CenterScreen"

$label0 = New-Object System.Windows.Forms.Label
$label0.Text = "This is a label."
$label0.Font = New-Object System.Drawing.Font("Lucida Console", 13, [System.Drawing.FontStyle]::Regular)
$label0.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$label0.Location = New-Object System.Drawing.Size(39.0, 38.0)
$label0.Size = New-Object System.Drawing.Size(188, 66)
$label0.ForeColor = "#0000FF"
$form.Controls.Add($label0)


$checkbox1 = New-Object System.Windows.Forms.CheckBox
$checkbox1.Text = "new Checkbox"
$checkbox1.Size = New-Object System.Drawing.Size(187, 48)
$checkbox1.Font = New-Object System.Drawing.Font("Lucide Console", 15, [System.Drawing.FontStyle]::Regular)
$checkbox1.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$checkbox1.Location = New-Object System.Drawing.Size(130.5, 172.0)
$checkbox1.ForeColor = "#000000"
$checkbox1.Name = "key"
$form.Controls.Add($checkbox1)


$button2 = New-Object System.Windows.Forms.Button
$button2.Text = ""
$button2.Size = New-Object System.Drawing.Size(125, 106)
$button2.Font = New-Object System.Drawing.Font("Lucide Console", 11, [System.Drawing.FontStyle]::Regular)
$button2.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$button2.Location = New-Object System.Drawing.Size(165.5, 262.0)
$button2.BackColor = "#FFFFFF"
$button2.ForeColor = "#000000"
$button2.Add_Click( {
    function Is-Checked {
        param (
            [string] $key
        )
        return $form.Controls.Find($key, 1).Checked
    }
    if (Is-Checked "key") {
    start-process "cmd" --ArgumentsList "echo Hello world."
} 
}.GetNewClosure() )
$form.Controls.Add($button2)
$button2.Image = [System.Drawing.Image]::FromFile("C:/Develop/Python_Workspace/misc/icons8-konsole-100.png")

[void] $form.ShowDialog()
        