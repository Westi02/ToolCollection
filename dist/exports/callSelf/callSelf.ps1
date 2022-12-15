
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

$form = New-Object System.Windows.Forms.Form
$form.FormBorderStyle = "FixedDialog"
$form.Text = "Call Self"
$form.BackColor = "#DFDFDF"
$form.Size = New-Object System.Drawing.Size(415, 248)

$form.Icon = "C:/Develop/Python_Workspace/GuiBuilder/res/prepare.ico"
$form.StartPosition = "CenterScreen"


$button0 = New-Object System.Windows.Forms.Button
$button0.Text = ""
$button0.Size = New-Object System.Drawing.Size(236, 156)
$button0.Font = New-Object System.Drawing.Font("Lucide Console", 11, [System.Drawing.FontStyle]::Regular)
$button0.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$button0.Location = New-Object System.Drawing.Size(76.0, 25.0)
$button0.BackColor = "#FFFFFF"
$button0.ForeColor = "#000000"
$button0.Add_Click( {
    function Is-Checked {
        param (
            [string] $key
        )
        return $form.Controls.Find($key, 1).Checked
    }
    start-process "START_callSelf.cmd" 
}.GetNewClosure() )
$form.Controls.Add($button0)
$button0.Image = [System.Drawing.Image]::FromFile("C:/Develop/Python_Workspace/misc/icons8-konsole-100.png")

[void] $form.ShowDialog()
        