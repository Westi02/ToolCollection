
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

$form = New-Object System.Windows.Forms.Form
$form.FormBorderStyle = "FixedDialog"
# $form.StartPosition = "CenterScreen"
$form.Text = ""
$form.BackColor = "#DFDFDF"
$form.Size = New-Object System.Drawing.Size(455, 480)
$form.StartPosition = "CenterScreen"

$button0 = New-Object System.Windows.Forms.Button
$button0.Text = "fenster schließen"
$button0.Size = New-Object System.Drawing.Size(207, 44)
$button0.Font = New-Object System.Drawing.Font("Lucide Console", 11, [System.Drawing.FontStyle]::Regular)
$button0.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$button0.Location = New-Object System.Drawing.Size(124.5, 283.0)
$button0.BackColor = "#FFFFFF"
$button0.ForeColor = "#000000"
$button0.Add_Click( {
function Is-Checked {
    param (
        [string] $key
    )
    return $form.Controls.Find($key, 1).Checked
}
$form.close() 
}.GetNewClosure() )
$form.Controls.Add($button0)
$label1 = New-Object System.Windows.Forms.Label
$label1.Text = "Drücke den Button"
$label1.Font = New-Object System.Drawing.Font("Lucida Console", 11, [System.Drawing.FontStyle]::Regular)
$label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$label1.Location = New-Object System.Drawing.Size(147.0, 168.0)
$label1.Size = New-Object System.Drawing.Size(168, 32)
$label1.ForeColor = "#000000"
$form.Controls.Add($label1)

[void] $form.ShowDialog()
        