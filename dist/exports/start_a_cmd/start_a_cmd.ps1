
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

$form = New-Object System.Windows.Forms.Form
$form.FormBorderStyle = "FixedDialog"
$form.Text = "Start a CMD !"
$form.BackColor = "#DFDFDF"
$form.Size = New-Object System.Drawing.Size(349, 260)

$form.Icon = "C:/Develop/Python_Workspace/GuiBuilder/res/prepare.ico"
$form.StartPosition = "CenterScreen"


$button0 = New-Object System.Windows.Forms.Button
$button0.Text = ""
$button0.Size = New-Object System.Drawing.Size(316, 168)
$button0.Font = New-Object System.Drawing.Font("Lucide Console", 11, [System.Drawing.FontStyle]::Regular)
$button0.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$button0.Location = New-Object System.Drawing.Size(8.0, 47.0)
$button0.BackColor = "#FFFFFF"
$button0.ForeColor = "#000000"
$button0.Add_Click( {
    function Is-Checked {
        param (
            [string] $key
        )
        return $form.Controls.Find($key, 1).Checked
    }
    start-process "cmd" 
}.GetNewClosure() )
$form.Controls.Add($button0)

$label1 = New-Object System.Windows.Forms.Label
$label1.Text = "This will start a CMD!"
$label1.Font = New-Object System.Drawing.Font("Lucida Console", 11, [System.Drawing.FontStyle]::Regular)
$label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$label1.Location = New-Object System.Drawing.Size(14.5, 6.0)
$label1.Size = New-Object System.Drawing.Size(311, 30)
$label1.ForeColor = "#5577AA"
$form.Controls.Add($label1)

[void] $form.ShowDialog()
        