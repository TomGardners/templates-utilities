<# Description
template menu for multiple processing
#>

### Menu Function ###

# Starts and creates the options menu for user.
$host.ui.RawUI.WindowTitle = "window title for menu"
function Show-Menu
{
param(
[string]$Title='title that appears on menu'
)
Write-Host "==========$Title=========="
Write-Host "1: Press '1' for option1"
Write-Host "2: Press '2' for option2"
Write-Host "3: Press '3' for option3"
Write-Host "4: Press '4' for option4"
Write-Host "5: Press '5' for option5"
Write-Host "9: Press '9' to Start Logging"
Write-Host "0: Press '0' to Stop Logging"
Write-Host "R: Press '6' for option6"
Write-Host "Q: Press 'Q' to Quit"
}

do
{
# Shows the menu.
Show-Menu

$host.ui.RawUI.WindowTitle = "window title"

# Allows for user input to select the value they desire from the menu and runs the appropriate switch.
$input=Read-Host "Please make a selection"
switch($input)
{
   '1'{
      

$host.ui.RawUI.WindowTitle = "option1 window title"

Clear-Host
<#
option 1 logic
#>

}
   '2'{

$host.ui.RawUI.WindowTitle = "option2 window title"

Clear-Host
<#
option 2 logic
#>

}
   '3'{

$host.ui.RawUI.WindowTitle = "option3 window title"

Clear-Host
<#
option 3 logic
#>

}
   '4'{

$host.ui.RawUI.WindowTitle = "option4 window title"

Clear-Host
<#
option 4 logic
#>

}
'5'{

$host.ui.RawUI.WindowTitle = "option5 window title"

Clear-Host
<#
option 5 logic
#>
}
   '9'{

$host.ui.RawUI.WindowTitle = "Starting Logging"

Clear-Host

# Start Logging

<# Description
This option starts the logging for diagnostic purposes.

#>

$VerbosePreference = "continue"

$LogFile = "C:\TEMP\Menu-$env:Computername-$env:username.log"

Start-Transcript -Path $LogFile 

}
   '0'{

$host.ui.RawUI.WindowTitle = "Stop Logging"

Clear-Host

# Stop Logging

<# Description
This option stops the logging for diagnostic purposes.

#>


Stop-Transcript
}
   '6'{

$host.ui.RawUI.WindowTitle = "option6 window title"

Clear-Host
<#
option 6 logic
#>

}
   'Q'{

# Quits the menu.
      return
      }
    }
    }
    Until ($input -eq 'Q')
exit