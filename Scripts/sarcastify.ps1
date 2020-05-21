$input = $args[0].ToLower().ToCharArray()

$upper = $TRUE

For ($i=0; $i -le $input.Length-1; $i++) {
    if($input[$i] -match '^[a-z]') {
        if($upper) {
            $input[$i] = [char]::ToUpper($input[$i]) 
        }
        $upper = !$upper
    }
}

$input -join ''