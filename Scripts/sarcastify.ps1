$input = $args[0].ToLower()
$splitinput = $input.ToCharArray()

$upper = $TRUE

For ($i=0; $i -le $splitinput.Length-1; $i++) {
    if($splitinput[$i] -match '^[a-z]') {
        if($upper) {
            $splitinput[$i] = [char]::ToUpper($splitinput[$i]) 
        }
        $upper = !$upper
    }
}

$splitinput -join ''

Write-Host $output