$game = Read-Host "Would you like to play a game"

# Using if statement for validation of our input
if ($game -eq "yes") {
    Write-Host "You picked yes"
} elseif ($game -eq "no") {
    Write-Host "You picked no"
} else {
    Write-Host "You didn't make a choice"
}

# Using switch statement for validation of our input
switch ($game) {
    ("yes") {"You picked yes"}
    ("no") {"You picked no"}
    Default {"You didn't make a choice"}
}

# Using $Host to only allow the choices provided to be chosen instead of inputting any value from Read-Host
$caption = "You must make a choice"
$message = "Do you know what this is?"

$red = New-Object System.Management.Automation.Host.ChoiceDescription "&Red Pill"
$blue = New-Object System.Management.Automation.Host.ChoiceDescription "&Blue Pill"
$cancle = New-Object System.Management.Automation.Host.ChoiceDescription "&Cancle"
$options = [System.Management.Automation.Host.ChoiceDescription[]]($red,$blue,$cancle)

$result = $Host.UI.PromptForChoice($caption,$message,$options,0)

