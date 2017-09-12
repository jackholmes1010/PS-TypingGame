Clear-Host
$text = "PowerShell (including Windows PowerShell and PowerShell Core) is a task automation and configuration management framework from Microsoft, consisting of a command-line shell and associated scripting language built on the .NET Framework and .NET Core."
# Print a bunch of lines (this has only artistic value)...
for ($i = 0; $i -lt 9; $i++) {
    for ($j = 0; $j -lt ($Host.UI.RawUI.WindowSize.Width); $j++) {
        Write-Host -NoNewLine "$" -ForegroundColor Gray -BackgroundColor Black
    }
}
Write-Host -NoNewline `n`n
Write-Host "$text" -BackgroundColor Black -ForegroundColor Cyan
Write-Host -NoNewline `n`n

# The index of the character in the text currently being typed.
$charIndex = 0
# The number of consecutive incorrect characters typed.
$incorrectCharacters = 0
# The starting position of the cursor in the console.
$startPosition = $Host.UI.RawUI.CursorPosition
# Number of words typed, used to track the WPM.
$wordsTyped = 0
# Timer to track the WPM.
$timer = [System.Diagnostics.StopWatch]::StartNew()

while ($true) {
    # Update progress...
    if ($charIndex -lt 1) {
        $percentComplete = 0
    }
    else {
        $percentComplete = ($charIndex/$text.length) * 100
    }

    $wpm = [Math]::Round($wordsTyped/$timer.Elapsed.TotalMinutes, 2)    
    Write-Progress "WPM: $wpm." -PercentComplete $percentComplete

    $key = [System.Console]::ReadKey($true)

    if ($key.Key -eq "Escape") {
        Write-Host -NoNewline `n
        break
    }

    if ($key.Key -eq "Backspace") {
        # Once we reach the start of the console, we 
        # need to move the cursor to the previous line.
        $position = $Host.UI.RawUI.CursorPosition
        if ($position -ne $startPosition) {
            if ($position.X -eq 0) {
                # Move to the last character on the previous line.
                $position.Y = $position.Y - 1
                $position.X = $Host.UI.RawUI.BufferSize.Width - 1
                $Host.UI.RawUI.CursorPosition = $position
    
                # Delete the last character on the previous line.
                Write-Host -NoNewLine ' '
    
                # Deleting the last character on the previous line will take us back
                # to the next line, so we need to reset the cursor position again.
                $position = $Host.UI.RawUI.CursorPosition
                $position.Y = $position.Y - 1
                $position.X = $Host.UI.RawUI.BufferSize.Width - 1
                $Host.UI.RawUI.CursorPosition = $position
            }
            else {
                # Remove the last character.
                Write-Host -NoNewLine `b
                Write-Host -NoNewLine ' '
                Write-Host -NoNewLine `b
            }

            # Since it is not possible to have incorrectly typed 
            # characters interspersed with correctly typed characters,
            # if the user presses the backspace key and the incorrectCharacters 
            # counter is non 0, this means they must be deleting a typo.
            if ($incorrectCharacters -ne 0) {
                $incorrectCharacters--
            }
            elseif ($charIndex -gt 0) {
                $charIndex--
            }
        }
    }
    else {
        if ($key.KeyChar -eq $text[$charIndex] -and $incorrectCharacters -eq 0) {
            Write-Host -NoNewLine $key.KeyChar -ForegroundColor Green
            $charIndex++

            if ($text[$charIndex] -eq ' ') {
                $wordsTyped++
            }

            if ($charIndex -eq $text.Length) {
                Write-Host -NoNewline `n
                break
            }
        }
        else {
            Write-Host -NoNewLine $key.KeyChar -ForegroundColor Red
            $incorrectCharacters++
        }
    }
}

Write-Host "WPM: $wpm"