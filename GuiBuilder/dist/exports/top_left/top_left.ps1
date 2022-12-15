
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

$form = New-Object System.Windows.Forms.Form
$form.FormBorderStyle = "FixedDialog"
$form.Text = ""
$form.BackColor = "#EFEFEF"
$form.Size = New-Object System.Drawing.Size(409, 408)
$form.StartPosition = "CenterScreen"


$button0 = New-Object System.Windows.Forms.Button
$button0.Text = ""
$button0.Size = New-Object System.Drawing.Size(156, 132)
$button0.Font = New-Object System.Drawing.Font("Lucide Console", 17, [System.Drawing.FontStyle]::Regular)
$button0.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$button0.Location = New-Object System.Drawing.Size(122.0, 119.0)
$button0.BackColor = "#FFFFFF"
$button0.ForeColor = "#000000"
$button0.Add_Click( {
    function Is-Checked {
        param (
            [string] $key
        )
        return $form.Controls.Find($key, 1).Checked
    }
     
}.GetNewClosure() )
$form.Controls.Add($button0)
$button0.Image = [System.Drawing.Image]::FromFile("C:/Develop/Python_Workspace/misc/icons8-konsole-100.png")

[void] $form.ShowDialog()
        