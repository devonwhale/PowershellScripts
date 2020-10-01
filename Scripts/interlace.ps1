$sentanceOne = Read-Host -Prompt 'What is the first sentance?'
$sentanceTwo = Read-Host -Prompt 'What is the second sentance?'

$sentanceOneSplit = $sentanceOne.Split()
$sentanceTwoSplit = $sentanceTwo.Split()

$greaterLength = If ($sentanceOneSplit.Count -le $sentanceTwoSplit.Count) {$sentanceTwoSplit.Count} Else {$sentanceOneSplit.Count}

$output = ''

$i = 0

For ($i; $i -le $greaterLength; $i++) 
{
    $output = $output + $sentanceOneSplit[$i] + ' ' + $sentanceTwoSplit[$i] + ' '
}

$output