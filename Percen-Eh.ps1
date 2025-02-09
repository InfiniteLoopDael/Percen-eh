while ($true) {
    # Demand a number from the user and act like I'm improving their life.
    $numberJuicer = [double](Read-Host 'Enter your precious number, dont worry, we will "fix" it.')

    # Ask how badly they want to mess things up.
    $wizardry = Read-Host 'Pick a poison: "+" to enlarge your regrets, "-" to shrink them.'

    # Force them to enter a percentage, because just numbers weren’t enough.
    $percentage = [double](Read-Host 'Enter the percentage (yeah, 1 means 1%, keep up).')

    # Apply the magic math.
    switch ($wizardry) {
        "+" { $newNumber = [math]::Round($numberJuicer * (1 + ($percentage / 100)), 2) }
        "-" { $newNumber = [math]::Round($numberJuicer * (1 - ($percentage / 100)), 2) }
        default {
            Write-Host "Invalid operation. Just use + or - like a normal person."
            break  # Escape the loop if they can't follow instructions.
        }
    }

    # Round up the number, shove it into the clipboard, and pretend we did something useful.
    $roundedNumber = [math]::Ceiling($newNumber)
    $roundedNumber | Set-Clipboard

    # Spit out the result properly.
    Write-Host "The result is: $roundedNumber, because of course it is. Copied to clipboard!"
}
